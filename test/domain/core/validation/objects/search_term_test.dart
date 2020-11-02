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
      final searchTerm = SearchTerm(validSearchTerm);
      // Assert
      expect(searchTerm.isValid(), true);
      expect(searchTerm.getOrCrash(), validSearchTerm);
    },
  );
  test(
    TestDescription.invalid,
    () async {
      // Act
      final searchTerm = SearchTerm(invalidSearchTerm);
      // Assert
      expect(searchTerm.isValid(), false);
    },
  );
}
