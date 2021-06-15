import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:quiver/iterables.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase/cloud_storage/cloud_storage_service.dart';
import 'package:worldon/data/core/misc/firebase/cloud_storage/storage_folder_enum.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/achievement/achievement_dto.dart';
import 'package:worldon/data/core/models/achievement/achievement_fields.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/experience/experience_fields.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
import 'package:worldon/data/core/models/tag/tag_fields.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/data/core/models/user/user_fields.dart';
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
  final _functions = FirebaseFunctions.instanceFor(region: "europe-west1");

  ProductionProfileRepository(this._firestore);

  @override
  Future<Either<Failure, Unit>> blockUser(UniqueId blockedId) async {
    try {
      final _userDocument = await _firestore.userDocument();
      _userDocument.update(
        {
          UserFields.blockedUsersIds: FieldValue.arrayUnion([blockedId.getOrCrash()]),
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
      _userDocument.update(
        {
          UserFields.blockedUsersIds: FieldValue.arrayRemove([blockedId.getOrCrash()]),
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
      _userDocument.update(
        {
          UserFields.followedUsersIds: FieldValue.arrayUnion([userToFollowId.getOrCrash()]),
          UserFields.followersAmount: FieldValue.increment(1),
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
      _userDocument.update(
        {
          UserFields.followedUsersIds: FieldValue.arrayRemove([userToUnFollowId.getOrCrash()]),
          UserFields.followersAmount: FieldValue.increment(-1),
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
      await user.imageFileOption.fold(
        () async {
          final _jsonUser = UserDto.fromDomain(user).toJson();
          await _firestore.userCollection
              .doc(
                _userId,
              )
              .update(_jsonUser);
        },
        (_file) async {
          final _imageUrl = await getIt<CloudStorageService>().uploadFileImage(
            imageToUpload: _file!,
            folder: StorageFolder.users,
            name: _userId,
          );
          final _jsonUser = UserDto.fromDomain(
            user.copyWith(
              imageURL: _imageUrl,
            ),
          ).toJson();
          await _firestore.userCollection.doc(_userId).update(_jsonUser);
        },
      );
      final _propagateUserUpdateCallable = _functions.httpsCallable("propagateUserUpdate");
      _propagateUserUpdateCallable.call(
        <String, dynamic>{"userId": _userId},
      );
      final _updateUserIndex = _functions.httpsCallable("updateUserIndex");
      await _updateUserIndex.call(
        <String, dynamic>{"userId": _userId},
      );
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
      _userDocument.update(
        {
          UserFields.experiencesLikedIds: FieldValue.arrayRemove([experienceId.getOrCrash()]),
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
      final _iterableOfIdLists = partition(
        _userDto.blockedUsersIds,
        10,
      );
      final _combinedStreamList = _getCombinedStreamList(_iterableOfIdLists);
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
      final _iterableOfIdLists = partition(
        _userDto.followedUsersIds,
        10,
      );
      final _combinedStreamList = _getCombinedStreamList(_iterableOfIdLists);
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

  List<Stream<QuerySnapshot>> _getCombinedStreamList(Iterable<List<String>> _iterableOfIdLists) {
    final _combinedStreamList = _iterableOfIdLists
        .map(
          (_idList) => _firestore.userCollection
              .where(
                UserFields.id,
                whereIn: _idList,
              )
              .orderBy(
                UserFields.creationDate,
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
          UserFields.followedUsersIds,
          arrayContains: id.getOrCrash(),
        )
        .orderBy(
          UserFields.creationDate,
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
  Future<Either<Failure, int>> getAmountOfFollowers(UniqueId id) async {
    try {
      final _followersSnapshot = await _firestore.userCollection
          .where(
            UserFields.followedUsersIds,
            arrayContains: id.getOrCrash(),
          )
          .get();
      final _followedAmount = _followersSnapshot.docs.length;
      return right(_followedAmount);
    } on FirebaseException catch (exception) {
      return onFirebaseException(exception);
    }
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesCreated(UniqueId id) async* {
    yield* _firestore.experienceCollection
        .where(
          ExperienceFields.creatorId,
          isEqualTo: id.getOrCrash(),
        )
        .orderBy(
          ExperienceFields.creationDate,
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
      final _iterableOfIdLists = partition(
        _userDto.experiencesDoneIds,
        10,
      );
      final _combinedStreamList = _iterableOfIdLists
          .map(
            (_idList) => _firestore.experienceCollection
                .where(
                  ExperienceFields.id,
                  whereIn: _idList,
                )
                .orderBy(
                  ExperienceFields.creationDate,
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
      final _iterableOfIdLists = partition(
        _userDto.experiencesLikedIds,
        10,
      );
      final _combinedStreamList = _iterableOfIdLists
          .map(
            (_idList) => _firestore.experienceCollection
                .where(
                  ExperienceFields.id,
                  whereIn: _idList,
                )
                .orderBy(
                  ExperienceFields.creationDate,
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
      final _iterableOfIdLists = partition(
        _userDto.achievementsIds,
        10,
      );
      final _combinedStreamList = _iterableOfIdLists
          .map(
            (_idList) => _firestore.achievementCollection
                .where(
                  AchievementFields.id,
                  whereIn: _idList,
                )
                .orderBy(
                  AchievementFields.creationDate,
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
      final _iterableOfIdLists = partition(
        _userDto.interestsIds,
        10,
      );
      final _combinedStreamList = _iterableOfIdLists
          .map(
            (_idList) => _firestore.tagCollection
                .where(
                  TagFields.id,
                  whereIn: _idList,
                )
                .orderBy(
                  TagFields.creationDate,
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

  @override
  Future<Either<Failure, Unit>> deleteExperience(UniqueId experienceId) async {
    try {
      await _firestore.experienceCollection.doc(experienceId.getOrCrash()).delete();
      return right(unit);
    } on FirebaseException catch (exception) {
      return onFirebaseException(exception);
    }
  }

  @override
  Stream<Either<Failure, User>> watchProfile(UniqueId userId) async* {
    yield* _firestore.userCollection
        .doc(
          userId.getOrCrash(),
        )
        .snapshots()
        .map(
          (snapshot) => UserDto.fromFirestore(snapshot).toDomain(),
        )
        .map(
      (_user) {
        return right<Failure, User>(
          _user,
        );
      },
    ).onErrorReturnWith(
      (error) => left(
        _onError(error),
      ),
    );
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
          CoreDataFailure.serverError(errorString: exception.message!),
        ),
      );
    }
  }

  Failure _onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else if (error is FormatException) {
      _logger.e("FormatException: ${error.message}");
      return Failure.coreDomain(
        CoreDomainFailure.unknownDomainLayerError(errorString: "Format exception: ${error.message}"),
      );
    } else {
      _logger.e("Unknown server error:  ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      );
    }
  }
}
