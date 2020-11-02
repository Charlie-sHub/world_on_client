import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../test_descriptions.dart';

void main() {
  final validTag = Tag.empty().copyWith(
    name: Name("Test"),
    creatorId: getValidUser().id,
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
    modificationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
  );
  final invalidNameTag = validTag.copyWith(name: Name(""));
  final invalidCreationDateTag = validTag.copyWith(creationDate: PastDate(DateTime.now().add(const Duration(days: 10))));
  final invalidModificationDateTag = validTag.copyWith(modificationDate: PastDate(DateTime.now().add(const Duration(days: 10))));
  test(
    TestDescription.valid,
    () async {
      // Assert
      expect(validTag.isValid, true);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "${TestDescription.invalid} with invalidNameTag",
        () async {
          // Assert
          expect(invalidNameTag.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidCreationDateTag",
        () async {
          // Assert
          expect(invalidCreationDateTag.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidModificationDateTag",
        () async {
          // Assert
          expect(invalidModificationDateTag.isValid, false);
        },
      );
    },
  );
}
