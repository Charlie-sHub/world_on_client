import 'package:dartz/dartz.dart' as dartz;
import 'package:kt_dart/kt.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_coordinates.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_objective.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_options.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_reward.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/device/device.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/location/location.dart';
import 'package:worldon/domain/core/entities/system/system.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

User getValidUser() {
  return User(
    id: 1,
    name: Name("Ricardo"),
    username: Name("ricky"),
    password: Password("abcd*1234"),
    email: EmailAddress("Ricardo@test.test"),
    birthday: PastDate(DateTime.now().subtract(const Duration(days: 10000))),
    description: EntityDescription("Trying to turn life into a game"),
    imageURL: "testUser.jpg",
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
    blockedUsers: {
      _getUserCarlos(),
      _getUserJuan(),
    },
    followedUsers: {
      _getUserBenjamin(),
      getUserKoji(),
    },
    devices: <Device>{},
    systems: <System>{},
    interests: {
      getTagFood(),
    },
    achievements: {
      Achievement.empty().copyWith(
        id: 3,
        name: Name("Excepteur sint"),
        description: EntityDescription("Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris"),
        creator: getUserKoji(),
        tags: TagSet(KtSet.of(getTagFood())),
      ),
    },
    experiencesDone: {
      Experience.empty().copyWith(
        id: 4,
        title: Name("Leverage agile"),
        description: EntityDescription("""
Capitalize on low hanging fruit to identify a ballpark value added activity to beta test.
 Override the digital divide with additional clickthroughs from DevOps."""),
        creator: _getUserBenjamin(),
        location: Location.empty().copyWith(id: 1),
        coordinates: getValidCoordinates(),
        objectives: ObjectiveSet(KtSet.of(getValidObjective())),
        rewards: RewardSet(KtSet.of(getValidReward())),
        tags: TagSet(KtSet.of(getTagFood())),
      ),
    },
    experiencesLiked: {
      Experience.empty().copyWith(
        id: 3,
        title: Name("Joyce neocapitalist"),
        description: EntityDescription("""
If the patriarchialist paradigm of narrative holds,
we have to choose between neocapitalist libertarianism and neodialectic capitalist theory.
But the main theme of the works of Joyce is the collapse, and some would say the futility, of subdialectic truth."""),
        creator: getUserKoji(),
        location: Location.empty().copyWith(id: 1),
        coordinates: getValidCoordinates(),
        objectives: ObjectiveSet(KtSet.of(getValidObjective())),
        rewards: RewardSet(KtSet.of(getValidReward())),
        tags: TagSet(KtSet.of(getTagFood())),
      ),
    },
    experiencesToDo: {
      Experience.empty().copyWith(
        id: 2,
        title: Name("Corduroy"),
        description: EntityDescription("Bro ipsum dolor sit amet bail flow method 360 euro 360 betty Whistler brain bucket gapers line saddle shreddin laps hammerhead."),
        creator: _getUserCarlos(),
        location: Location.empty().copyWith(id: 1),
        coordinates: getValidCoordinates(),
        objectives: ObjectiveSet(KtSet.of(getValidObjective())),
        rewards: RewardSet(KtSet.of(getValidReward())),
        tags: TagSet(KtSet.of(getTagFood())),
      ),
    },
  );
}

Tag getTagFood() {
  return Tag.empty().copyWith(
    id: 5,
    name: Name("Food"),
    creator: getUserKoji(),
  );
}

User getUserKoji() {
  return User.empty().copyWith(
    id: 3,
    name: Name("Koji"),
    username: Name("itoKoji"),
    password: Password("wow fizzle"),
    email: EmailAddress("test@test.test"),
    description: EntityDescription("Bring to the table win-win survival strategies to ensure proactive domination."),
  );
}

User _getUserBenjamin() {
  return User.empty().copyWith(
    id: 2,
    name: Name("Benjamin"),
    username: Name("BenjaminXxX"),
    password: Password("Shine humanitarian"),
    email: EmailAddress("test@test.test"),
    description: EntityDescription("Moguls taco jib, park rat huckfest taco glove bro"),
  );
}

User _getUserJuan() {
  return User.empty().copyWith(
    id: 3,
    name: Name("Juan"),
    username: Name("juan"),
    password: Password("Aenizzle daahng"),
    email: EmailAddress("test@test.test"),
    description: EntityDescription("Seitan live-edge austin, drinking vinegar gentrify vape vegan"),
  );
}

User _getUserCarlos() {
  return User.empty().copyWith(
    id: 2,
    name: Name("Carlos"),
    username: Name("carlos"),
    password: Password("cultivate milestones"),
    email: EmailAddress("test@test.test"),
    description: EntityDescription("My shizz nizzle things egizzle cool consectetuer sure."),
  );
}
