import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

part 'simple_user.freezed.dart';

/// [SimpleUser] entity class
///
/// [SimpleUser]s are of course the cornerstone of the application
@freezed
class SimpleUser with _$SimpleUser {
  const SimpleUser._();

  const factory SimpleUser({
    required UniqueId id,
    required Name name,
    required Name username,
    required String imageURL,
    required UserLevel level,
    required ExperiencePoints experiencePoints,
    required bool adminPowers,
    required int followersAmount,
  }) = _SimpleUser;

  factory SimpleUser.empty() => SimpleUser(
        id: UniqueId(),
        name: Name(""),
        username: Name(""),
        imageURL: "",
        level: UserLevel(0),
        experiencePoints: ExperiencePoints(100),
        adminPowers: false,
        followersAmount: 0,
      );

  factory SimpleUser.fromUser(User user) => SimpleUser(
        id: user.id,
        name: user.name,
        username: user.username,
        imageURL: user.imageURL,
        level: user.level,
        experiencePoints: user.experiencePoints,
        adminPowers: user.adminPowers,
        followersAmount: user.followersAmount,
      );

  Option<ValueFailure<dynamic>> get failureOption => name.failureOrUnit
      .andThen(username.failureOrUnit)
      .andThen(level.failureOrUnit)
      .andThen(experiencePoints.failureOrUnit)
      .fold(
        (failure) => some(failure),
        (_) => none(),
      );

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit => failureOption.fold(
        () => right(unit),
        (failure) => left(failure),
      );

  bool get isValid => failureOption.isNone();

  double get percentageToNextLevel {
    final _nextLevelRequirements =
        experiencePointsRequired(level.getOrCrash() + 1);
    int _totalToCurrentLevelRequirements = 0;
    for (int i = 0; i <= level.getOrCrash(); i++) {
      _totalToCurrentLevelRequirements += experiencePointsRequired(i);
    }
    final _hadToNextLevel =
        experiencePoints.getOrCrash() - _totalToCurrentLevelRequirements;
    final _result = _hadToNextLevel / _nextLevelRequirements;
    if (_result < 1 && _result >= 0) {
      return _result;
    } else {
      return 0;
    }
  }
}
