import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

import '../../../test_descriptions.dart';
import '../methods/get_valid_user.dart';

void main() {
  final validUser = getValidUser();
  final invalidNameUser = validUser.copyWith(name: Name(""));
  final invalidUsernameUser = validUser.copyWith(username: Name(""));
  final invalidPasswordUser = validUser.copyWith(password: Password(""));
  final invalidEmailAddressUser = validUser.copyWith(email: EmailAddress(""));
  final invalidBirthdayUser = validUser.copyWith(birthday: PastDate(DateTime.now()));
  final invalidDescriptionUser = validUser.copyWith(description: EntityDescription(""));
  final invalidUserLevelUser = validUser.copyWith(level: UserLevel(1000));
  final invalidExperiencePointsUser = validUser.copyWith(experiencePoints: ExperiencePoints(100000));
  final invalidLastLoginUser = validUser.copyWith(lastLogin: PastDate(DateTime.now()));
  final invalidCreationDateUser = validUser.copyWith(creationDate: PastDate(DateTime.now()));
  final invalidModificationDateUser = validUser.copyWith(modificationDate: PastDate(DateTime.now()));
  test(
    TestDescription.valid,
    () async {
      // Assert
      expect(validUser.isValid, true);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "$TestDescription.invalid with invalidNameUser",
        () async {
          // Assert
          expect(invalidNameUser.isValid, false);
        },
      );
      test(
        "$TestDescription.invalid with invalidUsernameUser",
        () async {
          // Assert
          expect(invalidUsernameUser.isValid, false);
        },
      );
      test(
        "$TestDescription.invalid with invalidPasswordUser",
        () async {
          // Assert
          expect(invalidPasswordUser.isValid, false);
        },
      );
      test(
        "$TestDescription.invalid with invalidEmailAddressUser",
        () async {
          // Assert
          expect(invalidEmailAddressUser.isValid, false);
        },
      );
      test(
        "$TestDescription.invalid with invalidBirthdayUser",
        () async {
          // Assert
          expect(invalidBirthdayUser.isValid, false);
        },
      );
      test(
        "$TestDescription.invalid with invalidDescriptionUser",
        () async {
          // Assert
          expect(invalidDescriptionUser.isValid, false);
        },
      );
      test(
        "$TestDescription.invalid with invalidUserLevelUser",
        () async {
          // Assert
          expect(invalidUserLevelUser.isValid, false);
        },
      );
      test(
        "$TestDescription.invalid with invalidExperiencePointsUser",
        () async {
          // Assert
          expect(invalidExperiencePointsUser.isValid, false);
        },
      );
      test(
        "$TestDescription.invalid with invalidLastLoginUser",
        () async {
          // Assert
          expect(invalidLastLoginUser.isValid, false);
        },
      );
      test(
        "$TestDescription.invalid with invalidCreationDateUser",
        () async {
          // Assert
          expect(invalidCreationDateUser.isValid, false);
        },
      );
      test(
        "$TestDescription.invalid with invalidModificationDateUser",
        () async {
          // Assert
          expect(invalidModificationDateUser.isValid, false);
        },
      );
    },
  );
}
