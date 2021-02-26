import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:quiver/iterables.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/cloud_storage/cloud_storage_service.dart';
import 'package:worldon/data/core/misc/cloud_storage/storage_folder_enum.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/achievement/achievement_dto.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/notification/notification_dto.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

import '../../../injection.dart';

@LazySingleton(as: ProfileRepositoryInterface, env: [Environment.prod])
class ProductionProfileRepository implements ProfileRepositoryInterface {
  final _logger = Logger();

  final FirebaseFirestore _firestore;

  ProductionProfileRepository(this._firestore);

  @override
  Future<Either<Failure, Unit>> blockUser(UniqueId blockedId) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "blockedUsersIds": FieldValue.arrayUnion([blockedId.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> followUser(UniqueId userToFollowId) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "followedUsersIds": FieldValue.arrayUnion([userToFollowId.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> unBlockUser(UniqueId blockedId) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "blockedUsersIds": FieldValue.arrayRemove([blockedId.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> unFollowUser(UniqueId userToUnFollowId) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "followedUsersIds": FieldValue.arrayRemove([userToUnFollowId.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> editUser(User user) async {
    try {
      final _userId = user.id.getOrCrash();
      // Should request the user doc instead of using the client's user?
      // Just as a way to ensure that the update took place.
      // Using await _firestore.userDocument();
      final _updatedUser = await user.imageFileOption.fold(
        () async {
          final _jsonUser = UserDto.fromDomain(user).toJson();
          await _firestore.userCollection
              .doc(
                _userId,
              )
              .update(_jsonUser);
          return user;
        },
        (_file) async {
          final _imageUrl = await getIt<CloudStorageService>().uploadFileImage(
            imageToUpload: _file,
            folder: StorageFolder.users,
            name: _userId,
          );
          final _jsonUser = UserDto.fromDomain(
            user.copyWith(
              imageURL: _imageUrl,
            ),
          ).toJson();
          await _firestore.userCollection.doc(_userId).update(_jsonUser);
          return UserDto.fromJson(_jsonUser).toDomain();
        },
      );
      // TODO: Move this to the backend
      // Having the client propagate the update is not a very scalable solution
      // It also highlights the problem of the current simplistic denormalization
      // If we are to use Firestore or some of the NoSQL db in the future then we need to come up with a better data model
      final _experiencesToUpdateQuerySnapshot = await _firestore.experienceCollection
          .where(
            "creatorId",
            isEqualTo: _userId,
          )
          .get();
      final _experiencesToUpdateDocuments = _experiencesToUpdateQuerySnapshot.docs.map(
        (_queryDocumentSnapshot) async => _queryDocumentSnapshot.reference.get(),
      );
      for (final _experienceDoc in _experiencesToUpdateDocuments) {
        final _oldExperience = ExperienceDto.fromFirestore(await _experienceDoc).toDomain();
        final _updatedExperience = _oldExperience.copyWith(creator: _updatedUser);
        final _updatedExperienceDto = ExperienceDto.fromDomain(_updatedExperience);
        await _firestore.experienceCollection.doc(_updatedExperienceDto.id).update(
              _updatedExperienceDto.toJson(),
            );
      }
      final _notificationsToUpdateQuerySnapshotBySender = await _firestore.notificationCollection
          .where(
            "sender.id",
            isEqualTo: _userId,
          )
          .get();
      final _notificationsToUpdateDocumentsBySender = _notificationsToUpdateQuerySnapshotBySender.docs.map(
        (_queryDocumentSnapshot) async => _queryDocumentSnapshot.reference.get(),
      );
      for (final _notificationDoc in _notificationsToUpdateDocumentsBySender) {
        final _oldNotification = NotificationDto.fromFirestore(await _notificationDoc).toDomain();
        final _updatedNotification = _oldNotification.copyWith(sender: _updatedUser);
        final _updatedNotificationDto = NotificationDto.fromDomain(_updatedNotification);
        await _firestore.notificationCollection.doc(_updatedNotificationDto.id).update(
              _updatedNotificationDto.toJson(),
            );
      }
      final _notificationsToUpdateQuerySnapshotByReceiver = await _firestore.notificationCollection
          .where(
            "receiver.id",
            isEqualTo: _userId,
          )
          .get();
      final _notificationsToUpdateDocumentsByReceiver = _notificationsToUpdateQuerySnapshotByReceiver.docs.map(
        (_queryDocumentSnapshot) async => _queryDocumentSnapshot.reference.get(),
      );
      for (final _notificationDoc in _notificationsToUpdateDocumentsByReceiver) {
        final _oldNotification = NotificationDto.fromFirestore(await _notificationDoc).toDomain();
        final _updatedNotification = _oldNotification.copyWith(receiver: _updatedUser);
        final _updatedNotificationDto = NotificationDto.fromDomain(_updatedNotification);
        await _firestore.notificationCollection.doc(_updatedNotificationDto.id).update(
              _updatedNotificationDto.toJson(),
            );
      }
      // TODO: Update Comments
      // Leaving that for now
      // Having the client look through each Experience for each comment is a bit too much
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, User>> getUser(UniqueId id) async {
    try {
      final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
      final _user = UserDto.fromFirestore(_userDocument).toDomain();
      return right(_user);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> removeExperienceLiked(UniqueId experienceId) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "experiencesLikedIds": FieldValue.arrayRemove([experienceId.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchBlockedUsers(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    if (_userDto.blockedUsersIds.isNotEmpty) {
      final _auxListOfIdLists = partition(
        _userDto.blockedUsersIds,
        10,
      );
      final _combinedStreamList = _getCombinedStreamList(_auxListOfIdLists);
      yield* _mergeStreamOfUserDocuments(_combinedStreamList);
    } else {
      yield* Stream.value(
        left(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        ),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowedUsers(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    if (_userDto.followedUsersIds.isNotEmpty) {
      final _auxListOfIdLists = partition(
        _userDto.followedUsersIds,
        10,
      );
      final _combinedStreamList = _getCombinedStreamList(_auxListOfIdLists);
      yield* _mergeStreamOfUserDocuments(_combinedStreamList);
    } else {
      yield* Stream.value(
        left(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        ),
      );
    }
  }

  List<Stream<QuerySnapshot>> _getCombinedStreamList(Iterable<List<String>> _auxListOfIdLists) {
    final _combinedStreamList = _auxListOfIdLists
        .map(
          (_idList) => _firestore.userCollection
              .where(
                "id",
                whereIn: _idList,
              )
              .orderBy(
                "creationDate",
                descending: true,
              )
              .snapshots(),
        )
        .toList();
    return _combinedStreamList;
  }

  Stream<Either<Failure, KtList<User>>> _mergeStreamOfUserDocuments(List<Stream<QuerySnapshot>> _combinedStreamList) {
    return CombineLatestStream(
      _combinedStreamList,
      (List<QuerySnapshot> values) {
        final _userList = <User>[];
        for (final _snapshot in values) {
          for (final document in _snapshot.docs) {
            final _user = UserDto.fromFirestore(document).toDomain();
            _userList.add(_user);
          }
        }
        return _userList;
      },
    ).map(
      (users) {
        if (users.isNotEmpty) {
          return right<Failure, KtList<User>>(
            users.toImmutableList(),
          );
        } else {
          return left<Failure, KtList<User>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
      (error) => left(_onError(error)),
    );
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowingUsers(UniqueId id) async* {
    yield* _firestore.userCollection
        .where(
          "followedUsersIds",
          arrayContains: id.getOrCrash(),
        ) // TODO: Should order by follow date
        .orderBy(
          "creationDate",
          descending: true,
        )
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => UserDto.fromFirestore(document).toDomain(),
          ),
        )
        .map(
      (users) {
        if (users.isNotEmpty) {
          return right<Failure, KtList<User>>(
            users.toImmutableList(),
          );
        } else {
          return left<Failure, KtList<User>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
        (error) => left(_onError(error)),
    );
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesCreated(UniqueId id) async* {
    yield* _firestore.experienceCollection
        .where(
          "creatorId",
          isEqualTo: id.getOrCrash(),
        )
        .orderBy(
          "creationDate",
          descending: true,
        )
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => ExperienceDto.fromFirestore(document).toDomain(),
          ),
        )
        .map(
      (experiences) {
        if (experiences.isNotEmpty) {
          return right<Failure, KtList<Experience>>(
            experiences.toImmutableList(),
          );
        } else {
          return left<Failure, KtList<Experience>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
      (error) => left(
        _onError(error),
      ),
    );
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesDone(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    if (_userDto.experiencesDoneIds.isNotEmpty) {
      final _auxListOfIdLists = partition(
        _userDto.experiencesDoneIds,
        10,
      );
      final _combinedStreamList = _auxListOfIdLists
          .map(
            (_idList) => _firestore.experienceCollection
                .where(
                  "id",
                  whereIn: _idList,
                )
                .orderBy(
                  "creationDate",
                  descending: true,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        _combinedStreamList,
        (List<QuerySnapshot> values) {
          final _experienceList = <Experience>[];
          for (final _snapshot in values) {
            for (final document in _snapshot.docs) {
              final _experience = ExperienceDto.fromFirestore(document).toDomain();
              _experienceList.add(_experience);
            }
          }
          return _experienceList;
        },
      ).map(
        (experiences) {
          if (experiences.isNotEmpty) {
            return right<Failure, KtList<Experience>>(
              experiences.toImmutableList(),
            );
          } else {
            return left<Failure, KtList<Experience>>(
              const Failure.coreData(
                CoreDataFailure.notFoundError(),
              ),
            );
          }
        },
      ).onErrorReturnWith(
          (error) => left(_onError(error)),
      );
    } else {
      yield* Stream.value(
        left(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        ),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesLiked(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    if (_userDto.experiencesLikedIds.isNotEmpty) {
      final _auxListOfIdLists = partition(
        _userDto.experiencesLikedIds,
        10,
      );
      final _combinedStreamList = _auxListOfIdLists
          .map(
            (_idList) => _firestore.experienceCollection
                .where(
                  "id",
                  whereIn: _idList,
                )
                .orderBy(
                  "creationDate",
                  descending: true,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        _combinedStreamList,
        (List<QuerySnapshot> values) {
          final _experienceList = <Experience>[];
          for (final _snapshot in values) {
            for (final document in _snapshot.docs) {
              final _experience = ExperienceDto.fromFirestore(document).toDomain();
              _experienceList.add(_experience);
            }
          }
          return _experienceList;
        },
      ).map(
        (experiences) {
          if (experiences.isNotEmpty) {
            return right<Failure, KtList<Experience>>(
              experiences.toImmutableList(),
            );
          } else {
            return left<Failure, KtList<Experience>>(
              const Failure.coreData(
                CoreDataFailure.notFoundError(),
              ),
            );
          }
        },
      ).onErrorReturnWith(
          (error) => left(_onError(error)),
      );
    } else {
      yield* Stream.value(
        left(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        ),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<Achievement>>> watchUserAchievements(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    if (_userDto.achievementsIds.isNotEmpty) {
      final _auxListOfIdLists = partition(
        _userDto.achievementsIds,
        10,
      );
      final _combinedStreamList = _auxListOfIdLists
          .map(
            (_idList) => _firestore.achievementCollection
                .where(
                  "id",
                  whereIn: _idList,
                )
                .orderBy(
                  "creationDate",
                  descending: true,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        _combinedStreamList,
        (List<QuerySnapshot> values) {
          final _achievementList = <Achievement>[];
          for (final _snapshot in values) {
            for (final document in _snapshot.docs) {
              final _achievement = AchievementDto.fromFirestore(document).toDomain();
              _achievementList.add(_achievement);
            }
          }
          return _achievementList;
        },
      ).map(
        (achievements) {
          if (achievements.isNotEmpty) {
            return right<Failure, KtList<Achievement>>(
              achievements.toImmutableList(),
            );
          } else {
            return left<Failure, KtList<Achievement>>(
              const Failure.coreData(
                CoreDataFailure.notFoundError(),
              ),
            );
          }
        },
      ).onErrorReturnWith(
          (error) => left(_onError(error)),
      );
    } else {
      yield* Stream.value(
        left(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        ),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchUserInterests(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    if (_userDto.interestsIds.isNotEmpty) {
      final _auxListOfIdLists = partition(
        _userDto.interestsIds,
        10,
      );
      final _combinedStreamList = _auxListOfIdLists
          .map(
            (_idList) => _firestore.tagCollection
                .where(
                  "id",
                  whereIn: _idList,
                )
                .orderBy(
                  "creationDate",
                  descending: true,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        _combinedStreamList,
        (List<QuerySnapshot> values) {
          final _tagList = <Tag>[];
          for (final _snapshot in values) {
            for (final document in _snapshot.docs) {
              final _tag = TagDto.fromFirestore(document).toDomain();
              _tagList.add(_tag);
            }
          }
          return _tagList;
        },
      ).map(
        (tags) {
          if (tags.isNotEmpty) {
            return right<Failure, KtList<Tag>>(
              tags.toImmutableList(),
            );
          } else {
            return left<Failure, KtList<Tag>>(
              const Failure.coreData(
                CoreDataFailure.notFoundError(),
              ),
            );
          }
        },
      ).onErrorReturnWith(
          (error) => left(_onError(error)),
      );
    } else {
      yield* Stream.value(
        left(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        ),
      );
    }
  }

  // TODO: Move this to experience management
  // The code needs some restructuring
  @override
  Future<Either<Failure, Unit>> deleteExperience(UniqueId experienceId) async {
    try {
      await _firestore.experienceCollection.doc(experienceId.getOrCrash()).delete();
      return right(unit);
    } on FirebaseException catch (exception) {
      return onFirebaseException(exception);
    }
  }

  Either<Failure, T> onFirebaseException<T>(FirebaseException exception) {
    _logger.e("FirebaseException: ${exception.message} Code: ${exception.code}");
    if (exception.code == "permission-denied") {
      return left(
        const Failure.coreDomain(
          CoreDomainFailure.unAuthorizedError(),
        ),
      );
    } else {
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(errorString: exception.message),
        ),
      );
    }
  }

  Failure _onError(dynamic error) {
    if (error is FirebaseException) {
      // TODO: Refactor and "unify" with onFirebaseException method
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else {
      _logger.e("Unknown server error:  ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      );
    }
  }
}
