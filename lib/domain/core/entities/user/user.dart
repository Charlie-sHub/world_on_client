import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/device/device.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/domain/core/entities/system/system.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

part 'user.freezed.dart';

/// [User] entity class
///
/// [User]s are of course the cornerstone of the application
@freezed
class User with _$User {
  const User._();

  const factory User({
    required UniqueId id,
    required Name name,
    required Name username,
    required Password password,
    required EmailAddress email,
    required PastDate birthday,
    required EntityDescription description,
    required String imageURL,
    required Option<File?> imageFileOption,
    required UserLevel level,
    required ExperiencePoints experiencePoints,
    required bool privacy,
    required bool adminPowers,
    required bool enabled,
    required PastDate lastLogin,
    required PastDate creationDate,
    required PastDate modificationDate,
    required Options options,
    required Set<UniqueId> blockedUsersIds,
    required Set<UniqueId> followedUsersIds,
    required Set<UniqueId> interestsIds,
    required Set<UniqueId> achievementsIds,
    required Set<UniqueId> experiencesDoneIds,
    required Set<UniqueId> experiencesLikedIds,
    required Set<UniqueId> experiencesToDoIds,
    required Set<Device> devices,
    required Set<System> systems,
    required Set<Item> items,
    required int coins,
    required int followersAmount,
    required PromotionPlan promotionPlan,
  }) = _User;

  factory User.empty() => User(
        id: UniqueId(),
        name: Name(""),
        username: Name(""),
        password: Password(""),
        email: EmailAddress(""),
        birthday: PastDate(DateTime.now()),
        description: EntityDescription(""),
        imageURL: "",
        imageFileOption: none(),
        level: UserLevel(0),
        experiencePoints: ExperiencePoints(100),
        privacy: false,
        adminPowers: false,
        enabled: true,
        lastLogin: PastDate(DateTime.now()),
        creationDate: PastDate(DateTime.now()),
        modificationDate: PastDate(DateTime.now()),
        options: Options(
          id: UniqueId(),
          languageCode: "",
        ),
        blockedUsersIds: <UniqueId>{},
        followedUsersIds: <UniqueId>{},
        interestsIds: <UniqueId>{},
        achievementsIds: <UniqueId>{},
        experiencesDoneIds: <UniqueId>{},
        experiencesLikedIds: <UniqueId>{},
        experiencesToDoIds: <UniqueId>{},
        devices: <Device>{},
        systems: <System>{},
        items: <Item>{},
        coins: 0,
        followersAmount: 0,
        promotionPlan: PromotionPlan.empty(),
      );

  factory User.fromSimpleUser(SimpleUser simpleUser) => User.empty().copyWith(
        id: simpleUser.id,
        name: simpleUser.name,
        username: simpleUser.username,
        imageURL: simpleUser.imageURL,
        level: simpleUser.level,
        experiencePoints: simpleUser.experiencePoints,
        adminPowers: simpleUser.adminPowers,
        followersAmount: simpleUser.followersAmount,
      );

  Option<ValueFailure<dynamic>> get failureOption => name.failureOrUnit
      .andThen(username.failureOrUnit)
      .andThen(password.failureOrUnit)
      .andThen(email.failureOrUnit)
      .andThen(birthday.failureOrUnit)
      .andThen(description.failureOrUnit)
      .andThen(level.failureOrUnit)
      .andThen(experiencePoints.failureOrUnit)
      .andThen(lastLogin.failureOrUnit)
      .andThen(creationDate.failureOrUnit)
      .andThen(modificationDate.failureOrUnit)
      .fold(
        (failure) => some(failure),
        (_) => none(),
      );

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit => failureOption.fold(
        () => right(unit),
        (failure) => left(failure),
      );

  bool get isValid => failureOption.isNone();

  SimpleUser get simplified => SimpleUser.fromUser(this);

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
