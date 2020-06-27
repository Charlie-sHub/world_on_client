import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/location/location.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

import '../../../constant_descriptions.dart';
import '../methods/get_valid_tag_set.dart';
import '../methods/get_valid_user.dart';

void main() {
  final validExperience = _getValidExperience();
  final invalidNameExperience = validExperience.copyWith(name: Name(""));
  final invalidDescriptionExperience = validExperience.copyWith(description: EntityDescription(""));
  final invalidCoordinatesExperience = validExperience.copyWith(coordinates: Coordinates.empty().copyWith(latitude: Latitude(10000)));
  final invalidCreatorExperience = validExperience.copyWith(creator: User.empty());
  final invalidDifficultyExperience = validExperience.copyWith(difficulty: Difficulty(12));
  final invalidCreationDateExperience = validExperience.copyWith(creationDate: PastDate(DateTime.now()));
  final invalidModificationDateExperience = validExperience.copyWith(modificationDate: PastDate(DateTime.now()));
  final invalidObjectivesExperience = validExperience.copyWith(objectives: ObjectiveSet(KtSet.empty()));
  final invalidRewardsExperience = validExperience.copyWith(
      rewards: RewardSet(KtSet.of(
    Reward.empty(),
    Reward.empty(),
    Reward.empty(),
    Reward.empty(),
    Reward.empty(),
    Reward.empty(),
  )));
  final invalidTagsExperience = validExperience.copyWith(tags: TagSet(KtSet.empty()));
  test(
    descriptionValid,
    () async {
      // Assert
      expect(validExperience.isValid, true);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with invalidNameExperience",
        () async {
          // Assert
          expect(invalidNameExperience.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidDescriptionExperience",
        () async {
          // Assert
          expect(invalidDescriptionExperience.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidCoordinatesExperience",
        () async {
          // Assert
          expect(invalidCoordinatesExperience.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidCreatorExperience",
        () async {
          // Assert
          expect(invalidCreatorExperience.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidDifficultyExperience",
        () async {
          // Assert
          expect(invalidDifficultyExperience.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidCreationDateExperience",
        () async {
          // Assert
          expect(invalidCreationDateExperience.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidModificationDateExperience",
        () async {
          // Assert
          expect(invalidModificationDateExperience.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidObjectivesExperience",
        () async {
          // Assert
          expect(invalidObjectivesExperience.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidRewardsExperience",
        () async {
          // Assert
          expect(invalidRewardsExperience.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidTagsExperience",
        () async {
          // Assert
          expect(invalidTagsExperience.isValid, false);
        },
      );
    },
  );
}

Experience _getValidExperience() {
  return Experience.empty().copyWith(
    name: Name("Test"),
    description: EntityDescription("Test"),
    coordinates: Coordinates.empty(),
    location: Location.empty(),
    creator: getValidUser(),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
    modificationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
    objectives: _getValidObjectiveSet(),
    rewards: _getValidRewardSet(),
    tags: getValidTagSet(),
  );
}

ObjectiveSet _getValidObjectiveSet() {
  return ObjectiveSet(
    KtSet.of(
      Objective.empty().copyWith(
        description: EntityDescription("Test"),
      ),
    ),
  );
}

RewardSet _getValidRewardSet() {
  return RewardSet(
    KtSet.of(
      Reward.empty().copyWith(
        name: Name("Test"),
        description: EntityDescription("Test"),
      ),
    ),
  );
}
