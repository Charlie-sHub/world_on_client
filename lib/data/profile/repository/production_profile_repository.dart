import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/cloud_storage/cloud_storage_service.dart';
import 'package:worldon/data/core/misc/cloud_storage/storage_folder_enum.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/achievement/achievement_dto.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
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
      user.imageFileOption.fold(
        () async {
          final _jsonUser = UserDto.fromDomain(user).toJson();
          await _firestore.userCollection
              .doc(
                user.id.getOrCrash(),
              )
              .update(_jsonUser);
        },
        (_file) async {
          final _imageUrl = await getIt<CloudStorageService>().uploadFileImage(
            imageToUpload: _file,
            folder: StorageFolder.users,
            name: user.id.getOrCrash(),
          );
          final _jsonUser = UserDto.fromDomain(
            user.copyWith(
              imageURL: _imageUrl,
            ),
          ).toJson();
          await _firestore.userCollection.doc(user.id.getOrCrash()).update(_jsonUser);
        },
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
      yield* _firestore.userCollection
          .where(
            "id",
            whereIn: _userDto.blockedUsersIds.toList(),
          ) // TODO: Should order by block date
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
        (error) => left(
          onError(error),
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
  Stream<Either<Failure, KtList<User>>> watchFollowedUsers(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    if (_userDto.followedUsersIds.isNotEmpty) {
      yield* _firestore.userCollection
          .where(
            "id",
            whereIn: _userDto.followedUsersIds.toList(),
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
        (error) => left(
          onError(error),
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
      (error) => left(
        onError(error),
      ),
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
        onError(error),
      ),
    );
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesDone(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    if (_userDto.experiencesDoneIds.isNotEmpty) {
      yield* _firestore.experienceCollection
          .where(
            "id",
            whereIn: _userDto.experiencesDoneIds.toList(),
          ) // TODO: Should order by done date
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
          onError(error),
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
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesLiked(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    if (_userDto.experiencesLikedIds.isNotEmpty) {
      yield* _firestore.experienceCollection
          .where(
            "id",
            whereIn: _userDto.experiencesLikedIds.toList(),
          ) // TODO: Should order by like date
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
          onError(error),
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
  Stream<Either<Failure, KtList<Achievement>>> watchUserAchievements(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    if (_userDto.achievementsIds.isNotEmpty) {
      yield* _firestore.achievementCollection
          .where(
            "id",
            whereIn: _userDto.achievementsIds.toList(),
          ) // TODO: Should order by awarding date
          .orderBy(
            "creationDate",
            descending: true,
          )
          .snapshots()
          .map(
            (snapshot) => snapshot.docs.map(
              (document) => AchievementDto.fromFirestore(document).toDomain(),
            ),
          )
          .map(
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
        (error) => left(
          onError(error),
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
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    if (_userDto.interestsIds.isNotEmpty) {
      yield* _firestore.tagCollection
          .where(
            "id",
            whereIn: _userDto.interestsIds.toList(),
          ) // TODO: Should order by addition date
          .orderBy(
            "creationDate",
            descending: true,
          )
          .snapshots()
          .map(
            (snapshot) => snapshot.docs.map(
              (document) => TagDto.fromFirestore(document).toDomain(),
            ),
          )
          .map(
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
        (error) => left(
          onError(error),
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
  Future<Either<Failure, Unit>> deleteExperience(UniqueId experienceId) {
    // TODO: implement deleteExperience
    throw UnimplementedError();
  }

  Either<Failure, T> onFirebaseException<T>(FirebaseException e) {
    _logger.e("FirebaseException: ${e.message}");
    return left(
      const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      ),
    );
  }

  Failure onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else {
      _logger.e("Unknown server error");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      );
    }
  }
}
