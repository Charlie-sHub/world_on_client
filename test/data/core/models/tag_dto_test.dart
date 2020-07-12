import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final tag = getValidTag();
      // Act
      final tagDto = TagDto.fromDomain(tag);
      final result = tagDto.toDomain();
      // Assert
      expect(result, tag);
    },
  );
}
