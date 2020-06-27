import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../constant_descriptions.dart';
import '../methods/get_valid_user.dart';

void main() {
  final validTag = Tag.empty().copyWith(
    name: Name("Test"),
    creator: getValidUser(),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
    modificationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
  );
  final invalidNameTag = validTag.copyWith(name: Name(""));
  final invalidUserTag = validTag.copyWith(creator: User.empty());
  final invalidCreationDateTag = validTag.copyWith(creationDate: PastDate(DateTime.now()));
  final invalidModificationDateTag = validTag.copyWith(modificationDate: PastDate(DateTime.now()));
  test(
    descriptionValid,
    () async {
      // Assert
      expect(validTag.isValid, true);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with invalidNameTag",
        () async {
          // Assert
          expect(invalidNameTag.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidUserTag",
        () async {
          // Assert
          expect(invalidUserTag.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidCreationDateTag",
        () async {
          // Assert
          expect(invalidCreationDateTag.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidModificationDateTag",
        () async {
          // Assert
          expect(invalidModificationDateTag.isValid, false);
        },
      );
    },
  );
}
