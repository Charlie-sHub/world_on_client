import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

import '../../../constant_descriptions.dart';
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
    descriptionValid,
    () async {
      // Assert
      expect(validUser.isValid, true);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with invalidNameUser",
        () async {
          // Assert
          expect(invalidNameUser.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidUsernameUser",
        () async {
          // Assert
          expect(invalidUsernameUser.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidPasswordUser",
        () async {
          // Assert
          expect(invalidPasswordUser.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidEmailAddressUser",
        () async {
          // Assert
          expect(invalidEmailAddressUser.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidBirthdayUser",
        () async {
          // Assert
          expect(invalidBirthdayUser.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidDescriptionUser",
        () async {
          // Assert
          expect(invalidDescriptionUser.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidUserLevelUser",
        () async {
          // Assert
          expect(invalidUserLevelUser.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidExperiencePointsUser",
        () async {
          // Assert
          expect(invalidExperiencePointsUser.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidLastLoginUser",
        () async {
          // Assert
          expect(invalidLastLoginUser.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidCreationDateUser",
        () async {
          // Assert
          expect(invalidCreationDateUser.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidModificationDateUser",
        () async {
          // Assert
          expect(invalidModificationDateUser.isValid, false);
        },
      );
    },
  );
}
