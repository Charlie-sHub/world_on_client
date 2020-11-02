import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_options.dart';
import 'package:worldon/data/core/models/options/options_dto.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final options = getValidOptions();
      // Act
      final optionsDto = OptionsDto.fromDomain(options);
      final result = optionsDto.toDomain();
      // Assert
      expect(result, options);
    },
  );
}
