import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_achievement.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_options.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
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
    password: Password("abcd*1234"),
    email: EmailAddress("Ricardo@test.test"),
    birthday: PastDate(DateTime.now().subtract(const Duration(days: 10000))),
    description: EntityDescription("Quisque vitae enim cursus mauris elementum tincidunt sed sodales felis."),
    imageURL: "testUser.jpg",
    level: UserLevel(10),
    experiencePoints: ExperiencePoints(100),
    privacy: false,
    adminPowers: false,
    enabled: true,
    lastLogin: PastDate(DateTime.now()),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 100))),
    modificationDate: PastDate(DateTime.now()),
    options: getValidOptions(),
    blockedUsers: {
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
    },
    followedUsers: {
      getValidUser(),
      getValidUser().copyWith(
        id: 2,
        name: Name("Benjamin"),
        username: Name("BenjaminXxX"),
      ),
      getValidUser().copyWith(
        id: 3,
        name: Name("Koji"),
        username: Name("itoKoji"),
      ),
    },
    devices: <Device>{},
    systems: <System>{},
    interests: {getValidTag()},
    achievements: {getValidAchievement()},
    experiencesDone: {getValidExperience()},
    experiencesLiked: {getValidExperience()},
    experiencesToDo: {
      getValidExperience().copyWith(
        id: 2,
        name: Name("Pellentesque porta"),
      ),
    },
  );
}
