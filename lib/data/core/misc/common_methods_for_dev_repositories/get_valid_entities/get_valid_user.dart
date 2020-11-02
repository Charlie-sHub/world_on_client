import 'package:dartz/dartz.dart' as dartz;
import 'package:worldon/core/assets.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_options.dart';
import 'package:worldon/domain/core/entities/device/device.dart';
import 'package:worldon/domain/core/entities/system/system.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

User getValidUser() {
  return User(
    id: 1,
    name: Name("Ricardo"),
    username: Name("ricky"),
    password: Password("abcdef"),
    email: EmailAddress("Ricardo@test.test"),
    birthday: PastDate(DateTime.now().subtract(const Duration(days: 10000))),
    description: EntityDescription("Trying to turn life into a game"),
    imageURL: Assets.userPlaceholder,
    imageFileOption: dartz.none(),
    level: UserLevel(10),
    experiencePoints: ExperiencePoints(100),
    privacy: false,
    adminPowers: false,
    enabled: true,
    lastLogin: PastDate(DateTime.now()),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 100))),
    modificationDate: PastDate(DateTime.now()),
    options: getValidOptions(),
    blockedUsersIds: {2, 3},
    followedUsersIds: {4, 5},
    interestsIds: {1},
    achievementsIds: {3},
    experiencesDoneIds: {4, 3, 2},
    experiencesLikedIds: {4, 3, 2},
    experiencesToDoIds: {5, 1, 0},
    devices: <Device>{},
    systems: <System>{},
  );
}
