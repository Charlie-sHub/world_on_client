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

@LazySingleton(
  as: ProfileRepositoryInterface,
  env: Environment.dev,
)
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
  Stream<Either<Failure, KtSet<User>>> loadBlockedUsers(int id) {
    Either<Failure, KtSet<User>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidUser(),
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
  Stream<Either<Failure, KtSet<Experience>>> loadExperiencesCreated(int id) {
    Either<Failure, KtSet<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidExperience(),
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
  Stream<Either<Failure, KtSet<Experience>>> loadExperiencesDone(int id) {
    Either<Failure, KtSet<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidExperience(),
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
  Stream<Either<Failure, KtSet<Experience>>> loadExperiencesLiked(int id) {
    Either<Failure, KtSet<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidExperience(),
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
  Stream<Either<Failure, KtSet<User>>> loadFollowedUsers(int id) {
    Either<Failure, KtSet<User>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidUser(),
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
  Stream<Either<Failure, KtSet<User>>> loadFollowingUsers(int id) {
    Either<Failure, KtSet<User>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidUser(),
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
  Future<Either<Failure, User>> loadUser(int id) {
    if (_random.nextBool()) {
      return getRightFuture(getValidUser());
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Stream<Either<Failure, KtSet<Achievement>>> loadUserAchievements(int userId) {
    Either<Failure, KtSet<Achievement>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
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
  Stream<Either<Failure, KtSet<Tag>>> loadUserInterests(int userId) {
    Either<Failure, KtSet<Tag>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidTag(),
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
