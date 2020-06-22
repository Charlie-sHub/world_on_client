import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';

import '../../../../constant_descriptions.dart';

void main() {
  const validPassword = "abcd*1234";
  const emptyPassword = "";
  const multiLinePassword = "abcd \n * \n 1234";
  const tooShortPassword = "a";
  const tooLongPassword = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
  test(
    descriptionValid,
    () async {
      // Act
      final password = Password(validPassword);
      // Assert
      expect(password.isValid(), true);
      expect(password.getOrCrash(), validPassword);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with tooShortPassword",
        () async {
          // Act
          final password = Password(tooShortPassword);
          // Assert
          expect(password.isValid(), false);
        },
      );
      test(
        "$descriptionInvalid with tooLongPassword",
        () async {
          // Act
          final password = Password(tooLongPassword);
          // Assert
          expect(password.isValid(), false);
        },
      );
      test(
        "$descriptionInvalid with emptyPassword",
        () async {
          // Act
          final password = Password(emptyPassword);
          // Assert
          expect(password.isValid(), false);
        },
      );
      test(
        "$descriptionInvalid with multiLinePassword",
        () async {
          // Act
          final password = Password(multiLinePassword);
          // Assert
          expect(password.isValid(), false);
        },
      );
    },
  );
}
