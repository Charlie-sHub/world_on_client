import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_achievement.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(as: ProfileRepositoryInterface, env: [Environment.dev])
class DevelopmentProfileRepository implements ProfileRepositoryInterface {
  final _random = Random();

  @override
  Future<Either<Failure, Unit>> blockUser(int blockedId) {
    // get the logged in user from the dao
    // get the user to be blocked by the id
    // to copy the logged in user with the user to be blocked added to its list of blocked users
    // update logged in user
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> deleteExperience(int experienceId) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> editUser(User user) {
    // transform the user to a moor user
    // update with the user dao
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> followUser(int userToUnFollowId) {
    // get the logged in user from the dao
    // get the user to be followed by the id
    // to copy the logged in user with the user to be followed added to its list of followed users
    // update logged in user
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchBlockedUsers(int id) {
    Either<Failure, KtList<User>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidUser(),
        User.empty(),
        getValidUser().copyWith(
          id: 2,
          name: Name("Carlos"),
          username: Name("carlos"),
        ),
        getValidUser().copyWith(
          id: 3,
          name: Name("Juan"),
          username: Name("juan"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesCreated(int id) {
    Either<Failure, KtList<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidExperience(),
        Experience.empty(),
        getValidExperience().copyWith(
          id: 2,
          title: Name("Phasellus"),
        ),
        getValidExperience().copyWith(
          id: 3,
          title: Name("Itaque"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesDone(int id) {
    Either<Failure, KtList<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidExperience().copyWith(
          title: Name("Biodiesel edison"),
        ),
        Experience.empty(),
        getValidExperience().copyWith(
          id: 2,
          title: Name("Affogato letterpress"),
        ),
        getValidExperience().copyWith(
          id: 3,
          title: Name("Copper mug"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesLiked(int id) {
    Either<Failure, KtList<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidExperience().copyWith(
          title: Name("Pillow popping"),
        ),
        Experience.empty(),
        getValidExperience().copyWith(
          id: 2,
          title: Name("Death cookies"),
        ),
        getValidExperience().copyWith(
          id: 3,
          title: Name("Sucker hole"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowedUsers(int id) {
    Either<Failure, KtList<User>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidUser(),
        User.empty(),
        getValidUser().copyWith(
          id: 2,
          name: Name("Mike"),
          username: Name("micky"),
          level: UserLevel(70),
        ),
        getValidUser().copyWith(
          id: 3,
          name: Name("Some"),
          username: Name("Guy"),
          level: UserLevel(33),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowingUsers(int id) {
    Either<Failure, KtList<User>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidUser(),
        User.empty(),
        getValidUser().copyWith(
          id: 2,
          name: Name("Ivan"),
          username: Name("ivanovich456345"),
          level: UserLevel(99),
        ),
        getValidUser().copyWith(
          id: 3,
          name: Name("Juan"),
          username: Name("juan"),
          level: UserLevel(5),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Future<Either<Failure, User>> getUser(int id) {
    if (_random.nextBool()) {
      return getRightFuture(getValidUser());
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Stream<Either<Failure, KtList<Achievement>>> watchUserAchievements(int userId) {
    Either<Failure, KtList<Achievement>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidAchievement(),
        getValidAchievement().copyWith(
          id: 2,
          name: Name("Nullam quam"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchUserInterests(int userId) {
    Either<Failure, KtList<Tag>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidTag(),
        Tag.empty(),
        getValidTag().copyWith(
          id: 2,
          name: Name("Mountains"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Future<Either<Failure, Unit>> removeExperienceLiked(int experienceId) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> unBlockUser(int blockedId) {
    // get the logged i user from the dao
    // get the user to be unblocked by the id
    // to copy the logged in user with the user to be unblocked removed from its list of blocked users
    // update logged in user
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> unFollowUser(int userToUnFollowId) {
    // get the logged i user from the dao
    // get the user to be unfollowed by the id
    // to copy the logged in user with the user to be unfollowed removed from its list of followed users
    // update logged in user
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
