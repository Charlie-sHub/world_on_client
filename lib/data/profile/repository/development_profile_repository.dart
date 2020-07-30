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
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(as: ProfileRepositoryInterface, env: [Environment.dev])
class DevelopmentProfileRepository implements ProfileRepositoryInterface {
  final _random = Random();

  @override
  Future<Either<Failure, Unit>> blockUser(int blockedId) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteExperience(int experienceId) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> editUser(User user) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> followUser(int userToUnFollowId) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Stream<Either<Failure, KtList<User>>> loadBlockedUsers(int id) {
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
  Stream<Either<Failure, KtList<Experience>>> loadExperiencesCreated(int id) {
    Either<Failure, KtList<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidExperience(),
        Experience.empty(),
        getValidExperience().copyWith(
          id: 2,
          name: Name("Phasellus"),
        ),
        getValidExperience().copyWith(
          id: 3,
          name: Name("Itaque"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> loadExperiencesDone(int id) {
    Either<Failure, KtList<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidExperience().copyWith(
          name: Name("Biodiesel edison"),
        ),
        Experience.empty(),
        getValidExperience().copyWith(
          id: 2,
          name: Name("Affogato letterpress"),
        ),
        getValidExperience().copyWith(
          id: 3,
          name: Name("Copper mug"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> loadExperiencesLiked(int id) {
    Either<Failure, KtList<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidExperience().copyWith(
          name: Name("Pillow popping"),
        ),
        Experience.empty(),
        getValidExperience().copyWith(
          id: 2,
          name: Name("Death cookies"),
        ),
        getValidExperience().copyWith(
          id: 3,
          name: Name("Sucker hole"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<User>>> loadFollowedUsers(int id) {
    Either<Failure, KtList<User>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidUser(),
        User.empty(),
        getValidUser().copyWith(
          id: 2,
          name: Name("Mike"),
          username: Name("micky"),
        ),
        getValidUser().copyWith(
          id: 3,
          name: Name("Some"),
          username: Name("Guy"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<User>>> loadFollowingUsers(int id) {
    Either<Failure, KtList<User>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidUser(),
        User.empty(),
        getValidUser().copyWith(
          id: 2,
          name: Name("Ivan"),
          username: Name("ivanovich456345"),
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
  Future<Either<Failure, User>> loadUser(int id) {
    if (_random.nextBool()) {
      return getRightFuture(getValidUser());
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Stream<Either<Failure, KtList<Achievement>>> loadUserAchievements(int userId) {
    Either<Failure, KtList<Achievement>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidAchievement(),
        Achievement.empty(),
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
  Stream<Either<Failure, KtList<Tag>>> loadUserInterests(int userId) {
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
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> unBlockUser(int blockedId) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> unFollowUser(int userToUnFollowId) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }
}
