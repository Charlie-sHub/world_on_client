import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/models/system/system_dto.dart';
import 'package:worldon/domain/core/entities/system/system.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final system = System(
        id: UniqueId(),
        name: "Test",
        type: "Test",
        company: "Test",
      );
      // Act
      final systemDto = SystemDto.fromDomain(system);
      final result = systemDto.toDomain();
      // Assert
      expect(result, system);
    },
  );
}
