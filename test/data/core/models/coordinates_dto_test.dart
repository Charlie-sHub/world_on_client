import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_coordinates.dart';
import 'package:worldon/data/core/models/coordinates/coordinates_dto.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final coordinates = getValidCoordinates();
      // Act
      final coordinatesDto = CoordinatesDto.fromDomain(coordinates);
      final result = coordinatesDto.toDomain();
      // Assert
      expect(result, coordinates);
    },
  );
}
