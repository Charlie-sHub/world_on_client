import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/models/device/device_dto.dart';
import 'package:worldon/domain/core/entities/device/device.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final device = Device(
        id: UniqueId(),
        name: "Test",
        type: "Test",
        company: "Test",
      );
      // Act
      final deviceDto = DeviceDto.fromDomain(device);
      final result = deviceDto.toDomain();
      // Assert
      expect(result, device);
    },
  );
}
