import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
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
      final _userDto = UserDto.fromDomain(user);
      await _firestore.userCollection.doc(user.id.getOrCrash()).update(_userDto.toJson());
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
    yield* _firestore.userCollection
      .where(
      FieldPath.documentId,
      whereIn: _userDto.blockedUsersIds.toList(),
    )
      .snapshots()
      .map(
        (snapshot) =>
        snapshot.docs.map(
            (document) => UserDto.fromFirestore(document).toDomain(),
        ),
    )
      .map(
        (users) =>
        right<Failure, KtList<User>>(
          users.toImmutableList(),
        ),
    )
      .onErrorReturnWith(
        (error) =>
        left(
          onError(error),
        ),
    );
  }
  
  @override
  Stream<Either<Failure, KtList<User>>> watchFollowedUsers(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    yield* _firestore.userCollection
      .where(
      FieldPath.documentId,
      whereIn: _userDto.followedUsersIds.toList(),
    )
      .snapshots()
      .map(
        (snapshot) =>
        snapshot.docs.map(
            (document) => UserDto.fromFirestore(document).toDomain(),
        ),
    )
      .map(
        (users) =>
        right<Failure, KtList<User>>(
          users.toImmutableList(),
        ),
    )
      .onErrorReturnWith(
        (error) =>
        left(
          onError(error),
        ),
    );
  }
  
  @override
  Stream<Either<Failure, KtList<User>>> watchFollowingUsers(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    yield* _firestore.userCollection
      .where(
      "followedUsersIds",
      arrayContains: _userDto.id,
    )
      .snapshots()
      .map(
        (snapshot) =>
        snapshot.docs.map(
            (document) => UserDto.fromFirestore(document).toDomain(),
        ),
    )
      .map(
        (users) =>
        right<Failure, KtList<User>>(
          users.toImmutableList(),
        ),
    )
      .onErrorReturnWith(
        (error) =>
        left(
          onError(error),
        ),
    );
  }
  
  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesCreated(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    yield* _firestore.experienceCollection
      .where(
      "creatorId",
      isEqualTo: _userDto.id,
    )
      .snapshots()
      .map(
        (snapshot) =>
        snapshot.docs.map(
            (document) => ExperienceDto.fromFirestore(document).toDomain(),
        ),
    )
      .map(
        (experiences) =>
        right<Failure, KtList<Experience>>(
          experiences.toImmutableList(),
        ),
    )
      .onErrorReturnWith(
        (error) =>
        left(
          onError(error),
        ),
    );
  }
  
  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesDone(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    yield* _firestore.experienceCollection
      .where(
      FieldPath.documentId,
      whereIn: _userDto.experiencesDoneIds.toList(),
    )
      .snapshots()
      .map(
        (snapshot) =>
        snapshot.docs.map(
            (document) => ExperienceDto.fromFirestore(document).toDomain(),
        ),
    )
      .map(
        (experiences) =>
        right<Failure, KtList<Experience>>(
          experiences.toImmutableList(),
        ),
    )
      .onErrorReturnWith(
        (error) =>
        left(
          onError(error),
        ),
    );
  }
  
  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesLiked(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    yield* _firestore.experienceCollection
      .where(
      FieldPath.documentId,
      whereIn: _userDto.experiencesLikedIds.toList(),
    )
      .snapshots()
      .map(
        (snapshot) =>
        snapshot.docs.map(
            (document) => ExperienceDto.fromFirestore(document).toDomain(),
        ),
    )
      .map(
        (experiences) =>
        right<Failure, KtList<Experience>>(
          experiences.toImmutableList(),
        ),
    )
      .onErrorReturnWith(
        (error) =>
        left(
          onError(error),
        ),
    );
  }
  
  @override
  Stream<Either<Failure, KtList<Achievement>>> watchUserAchievements(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    yield* _firestore.achievementCollection
      .where(
      FieldPath.documentId,
      whereIn: _userDto.achievementsIds.toList(),
    )
      .snapshots()
      .map(
        (snapshot) =>
        snapshot.docs.map(
            (document) => AchievementDto.fromFirestore(document).toDomain(),
        ),
    )
      .map(
        (achievements) =>
        right<Failure, KtList<Achievement>>(
          achievements.toImmutableList(),
        ),
    )
      .onErrorReturnWith(
        (error) =>
        left(
          onError(error),
        ),
    );
  }
  
  @override
  Stream<Either<Failure, KtList<Tag>>> watchUserInterests(UniqueId id) async* {
    final _userDocument = await _firestore.userCollection.doc(id.getOrCrash()).get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    yield* _firestore.tagCollection
      .where(
      FieldPath.documentId,
      whereIn: _userDto.interestsIds.toList(),
    )
      .snapshots()
      .map(
        (snapshot) =>
        snapshot.docs.map(
            (document) => TagDto.fromFirestore(document).toDomain(),
        ),
    )
      .map(
        (tags) =>
        right<Failure, KtList<Tag>>(
          tags.toImmutableList(),
        ),
    )
      .onErrorReturnWith(
        (error) =>
        left(
          onError(error),
        ),
    );
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
