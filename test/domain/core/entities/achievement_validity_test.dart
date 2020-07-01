import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

import '../../../test_descriptions.dart';
import '../methods/get_valid_tag_set.dart';
import '../methods/get_valid_user.dart';

void main() {
  final validAchievement = _getValidAchievement();
  final invalidNameAchievement = validAchievement.copyWith(name: Name(""));
  final invalidDescriptionAchievement = validAchievement.copyWith(description: EntityDescription(""));
  final invalidExperiencePointsAchievement = validAchievement.copyWith(experiencePoints: ExperiencePoints(1000000));
  final invalidCreatorAchievement = validAchievement.copyWith(creator: User.empty());
  final invalidCreationDateAchievement = validAchievement.copyWith(creationDate: PastDate(DateTime.now().add(const Duration(days: 10))));
  final invalidModificationDateAchievement = validAchievement.copyWith(modificationDate: PastDate(DateTime.now().add(const Duration(days: 10))));
  final invalidTagsAchievement = validAchievement.copyWith(tags: TagSet(KtSet.of(Tag.empty())));
  test(
    TestDescription.valid,
    () async {
      // Assert
      expect(validAchievement.isValid, true);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "${TestDescription.invalid} with invalidNameAchievement",
        () async {
          // Assert
          expect(invalidNameAchievement.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidDescriptionAchievement",
        () async {
          // Assert
          expect(invalidDescriptionAchievement.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidExperiencePointsAchievement",
        () async {
          // Assert
          expect(invalidExperiencePointsAchievement.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidCreatorAchievement",
        () async {
          // Assert
          expect(invalidCreatorAchievement.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidCreationDateAchievement",
        () async {
          // Assert
          expect(invalidCreationDateAchievement.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidModificationDateAchievement",
        () async {
          // Assert
          expect(invalidModificationDateAchievement.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidTagsAchievement",
        () async {
          // Assert
          expect(invalidTagsAchievement.isValid, false);
        },
      );
    },
  );
}

Achievement _getValidAchievement() {
  return Achievement.empty().copyWith(
    name: Name("Test"),
    description: EntityDescription("Testing"),
    experiencePoints: ExperiencePoints(100),
    creator: getValidUser(),
    tags: getValidTagSet(),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
    modificationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
  );
}
