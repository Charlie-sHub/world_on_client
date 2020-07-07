import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';

import '../../../../test_descriptions.dart';

void main() {
  const invalidSearchTerm = "";
  const validSearchTerm = "Test";
  test(
    TestDescription.valid,
    () async {
      // Act
      final name = SearchTerm(validSearchTerm);
      // Assert
      expect(name.isValid(), true);
      expect(name.getOrCrash(), validSearchTerm);
    },
  );
  test(
    TestDescription.invalid,
    () async {
      // Act
      final name = SearchTerm(invalidSearchTerm);
      // Assert
      expect(name.isValid(), false);
    },
  );
}
