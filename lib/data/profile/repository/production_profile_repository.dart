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

@LazySingleton(as: ProfileRepositoryInterface, env: [Environment.prod])
class ProductionProfileRepository implements ProfileRepositoryInterface {
  final Logger _logger;
  final FirebaseFirestore _firestore;
  final CloudStorageService _cloudStorageService;
  final _functions = FirebaseFunctions.instanceFor(region: "europe-west1");

  ProductionProfileRepository(
    this._firestore,
    this._logger,
    this._cloudStorageService,
  );

  @override
  Future<Either<Failure, Unit>> blockUser(UniqueId blockedId) async {
    try {
      final userDocument = await _firestore.currentUserReference();
      userDocument.update(
        {
          UserFields.blockedUsersIds: FieldValue.arrayUnion(
            [blockedId.getOrCrash()],
          ),
        },
      );
      return right(unit);
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Future<Either<Failure, Unit>> unBlockUser(UniqueId blockedId) async {
    try {
      final userDocument = await _firestore.currentUserReference();
      userDocument.update(
        {
          UserFields.blockedUsersIds: FieldValue.arrayRemove(
            [blockedId.getOrCrash()],
          ),
        },
      );
      return right(unit);
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Future<Either<Failure, Unit>> followUser(UniqueId userToFollowId) async {
    try {
      final currentUserDocument = await _firestore.currentUserReference();
      final userToFollowDocument =
          _firestore.userCollection.doc(userToFollowId.getOrCrash());
      currentUserDocument.update(
        {
          UserFields.followedUsersIds: FieldValue.arrayUnion(
            [userToFollowId.getOrCrash()],
          ),
        },
      );
      userToFollowDocument.update(
        {
          UserFields.followersAmount: FieldValue.increment(1),
        },
      );
      return right(unit);
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Future<Either<Failure, Unit>> unFollowUser(UniqueId userToUnFollowId) async {
    try {
      final currentUserDocument = await _firestore.currentUserReference();
      final userToFollowDocument =
          _firestore.userCollection.doc(userToUnFollowId.getOrCrash());
      currentUserDocument.update(
        {
          UserFields.followedUsersIds: FieldValue.arrayRemove(
            [userToUnFollowId.getOrCrash()],
          ),
        },
      );
      userToFollowDocument.update(
        {
          UserFields.followersAmount: FieldValue.increment(-1),
        },
      );
      return right(unit);
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Future<Either<Failure, Unit>> editUser(User user) async {
    try {
      // This is a way to ensure the edited user only changes the current user's document
      final userReference = await _firestore.currentUserReference();
      final userId = userReference.id;
      String imageUrl = "";
      await user.imageFileOption.fold(
        () async {
          imageUrl = user.imageURL;
        },
        (file) async {
          imageUrl = await _cloudStorageService.uploadFileImage(
            imageToUpload: file!,
            folder: StorageFolder.users,
            name: userId,
          );
        },
      );
      final jsonUser = UserDto.fromDomain(
        user.copyWith(
          imageURL: imageUrl,
        ),
      ).toJson();
      await _firestore.userCollection
          .doc(
            userId,
          )
          .update(jsonUser);
      final propagateUserUpdateCallable = _functions.httpsCallable(
        "propagateUserUpdate",
      );
      propagateUserUpdateCallable.call(
        <String, dynamic>{"userId": userId},
      );
      final updateUserIndex = _functions.httpsCallable(
        "updateUserIndex",
      );
      await updateUserIndex.call(
        <String, dynamic>{"userId": userId},
      );
      return right(unit);
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Future<Either<Failure, User>> getUser(UniqueId id) async {
    try {
      final userDocument =
          await _firestore.userCollection.doc(id.getOrCrash()).get();
      final user = userDocument.data()!.toDomain();
      return right(user);
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Future<Either<Failure, Unit>> removeExperienceLiked(
    UniqueId experienceId,
  ) async {
    try {
      final userDocument = await _firestore.currentUserReference();
      userDocument.update(
        {
          UserFields.experiencesLikedIds:
              FieldValue.arrayRemove([experienceId.getOrCrash()]),
        },
      );
      return right(unit);
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchBlockedUsers(UniqueId id) async* {
    final userDocument =
        await _firestore.userCollection.doc(id.getOrCrash()).get();
    final userDto = userDocument.data();
    if (userDto!.blockedUsersIds.isNotEmpty) {
      final iterableOfIdLists = partition(
        userDto.blockedUsersIds,
        10,
      );
      final combinedStreamList = _getCombinedStreamList(iterableOfIdLists);
      yield* _mergeStreamOfUserDocuments(combinedStreamList);
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
    final userDocument =
        await _firestore.userCollection.doc(id.getOrCrash()).get();
    final userDto = userDocument.data();
    if (userDto!.followedUsersIds.isNotEmpty) {
      final iterableOfIdLists = partition(
        userDto.followedUsersIds,
        10,
      );
      final combinedStreamList = _getCombinedStreamList(iterableOfIdLists);
      yield* _mergeStreamOfUserDocuments(combinedStreamList);
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

  List<Stream<QuerySnapshot<UserDto>>> _getCombinedStreamList(
    Iterable<List<String>> iterableOfIdLists,
  ) {
    final combinedStreamList = iterableOfIdLists
        .map(
          (idList) => _firestore.userCollection
              .where(
                UserFields.id,
                whereIn: idList,
              )
              .snapshots(),
        )
        .toList();
    return combinedStreamList;
  }

  Stream<Either<Failure, KtList<User>>> _mergeStreamOfUserDocuments(
    List<Stream<QuerySnapshot<UserDto>>> combinedStreamList,
  ) =>
      CombineLatestStream(
        combinedStreamList,
        (List<QuerySnapshot<UserDto>> values) {
          final userList = <User>[];
          for (final snapshot in values) {
            for (final document in snapshot.docs) {
              final user = document.data().toDomain();
              userList.add(user);
            }
          }
          return userList;
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
        (error, _) => left(
          _onError(error),
        ),
      );

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowingUsers(
    UniqueId id,
  ) async* {
    yield* _firestore.userCollection
        .where(
          UserFields.followedUsersIds,
          arrayContains: id.getOrCrash(),
        )
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => document.data().toDomain(),
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
      (error, _) => left(
        _onError(error),
      ),
    );
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesCreated(
    UniqueId id,
  ) async* {
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
            (document) => document.data().toDomain(),
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
      (error, _) => left(
        _onError(error),
      ),
    );
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesDone(
    UniqueId id,
  ) async* {
    final userDocument =
        await _firestore.userCollection.doc(id.getOrCrash()).get();
    final userDto = userDocument.data();
    if (userDto!.experiencesDoneIds.isNotEmpty) {
      final iterableOfIdLists = partition(
        userDto.experiencesDoneIds,
        10,
      );
      final combinedStreamList = iterableOfIdLists
          .map(
            (idList) => _firestore.experienceCollection
                .where(
                  ExperienceFields.id,
                  whereIn: idList,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        combinedStreamList,
        (List<QuerySnapshot<ExperienceDto>> values) {
          final experienceList = <Experience>[];
          for (final snapshot in values) {
            for (final document in snapshot.docs) {
              final experience = document.data().toDomain();
              experienceList.add(experience);
            }
          }
          return experienceList;
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
        (error, _) => left(
          _onError(error),
        ),
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
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesLiked(
    UniqueId id,
  ) async* {
    final userDocument =
        await _firestore.userCollection.doc(id.getOrCrash()).get();
    final userDto = userDocument.data();
    if (userDto!.experiencesLikedIds.isNotEmpty) {
      final iterableOfIdLists = partition(
        userDto.experiencesLikedIds,
        10,
      );
      final combinedStreamList = iterableOfIdLists
          .map(
            (idList) => _firestore.experienceCollection
                .where(
                  ExperienceFields.id,
                  whereIn: idList,
                )
                .orderBy(
                  ExperienceFields.creationDate,
                  descending: true,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        combinedStreamList,
        (List<QuerySnapshot<ExperienceDto>> values) {
          final experienceList = <Experience>[];
          for (final snapshot in values) {
            for (final document in snapshot.docs) {
              final experience = document.data().toDomain();
              experienceList.add(experience);
            }
          }
          return experienceList;
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
        (error, _) => left(
          _onError(error),
        ),
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
  Stream<Either<Failure, KtList<Achievement>>> watchUserAchievements(
    UniqueId id,
  ) async* {
    final userDocument =
        await _firestore.userCollection.doc(id.getOrCrash()).get();
    final userDto = userDocument.data();
    if (userDto!.achievementsIds.isNotEmpty) {
      final iterableOfIdLists = partition(
        userDto.achievementsIds,
        10,
      );
      final combinedStreamList = iterableOfIdLists
          .map(
            (idList) => _firestore.achievementCollection
                .where(
                  AchievementFields.id,
                  whereIn: idList,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        combinedStreamList,
        (List<QuerySnapshot<AchievementDto>> values) {
          final achievementList = <Achievement>[];
          for (final snapshot in values) {
            for (final document in snapshot.docs) {
              final achievement = document.data().toDomain();
              achievementList.add(achievement);
            }
          }
          return achievementList;
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
        (error, _) => left(
          _onError(error),
        ),
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
    final userDocument =
        await _firestore.userCollection.doc(id.getOrCrash()).get();
    final userDto = userDocument.data();
    if (userDto!.interestsIds.isNotEmpty) {
      final iterableOfIdLists = partition(
        userDto.interestsIds,
        10,
      );
      final combinedStreamList = iterableOfIdLists
          .map(
            (idList) => _firestore.tagCollection
                .where(
                  TagFields.id,
                  whereIn: idList,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        combinedStreamList,
        (List<QuerySnapshot<TagDto>> values) {
          final tagList = <Tag>[];
          for (final snapshot in values) {
            for (final document in snapshot.docs) {
              final tag = document.data().toDomain();
              tagList.add(tag);
            }
          }
          return tagList;
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
        (error, _) => left(
          _onError(error),
        ),
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
  Stream<Either<Failure, User>> watchProfile(UniqueId userId) async* {
    yield* _firestore.userCollection
        .doc(
          userId.getOrCrash(),
        )
        .snapshots()
        .map(
          (snapshot) => snapshot.data()!.toDomain(),
        )
        .map(
          (user) => right<Failure, User>(
            user,
          ),
        )
        .onErrorReturnWith(
          (error, _) => left(
            _onError(error),
          ),
        );
  }

  Failure _onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message} Code: ${error.code}");
      if (error.code == "permission-denied") {
        return const Failure.coreDomain(
          CoreDomainFailure.unAuthorizedError(),
        );
      } else {
        return Failure.coreData(
          CoreDataFailure.serverError(errorString: error.message!),
        );
      }
    } else if (error is FormatException) {
      _logger.e("FormatException: ${error.message}");
      return Failure.coreDomain(
        CoreDomainFailure.unknownDomainLayerError(
          errorString: "Format exception: ${error.message}",
        ),
      );
    } else {
      _logger.e("Unknown server error:  ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown data layer error"),
      );
    }
  }
}
