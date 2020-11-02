import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_location.dart';
import 'package:worldon/data/core/models/location/location_dto.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final location = getValidLocation();
      // Act
      final locationDto = LocationDto.fromDomain(location);
      final result = locationDto.toDomain();
      // Assert
      expect(result, location);
    },
  );
}
