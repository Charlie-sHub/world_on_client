import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/coordinates.dart';
import 'package:worldon/domain/core/use_case/get_current_location.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

import '../repository/mock_geo_location_repository.dart';

void main() {
  MockGeoLocationRepository mockGeoLocationRepository;
  GetCurrentLocation useCase;
  setUp(
    () {
      mockGeoLocationRepository = MockGeoLocationRepository();
      useCase = GetCurrentLocation(mockGeoLocationRepository);
    },
  );
  final currentLocation = Coordinates(
    latitude: Latitude(0.0),
    longitude: Longitude(0.0),
  );
  test(
    "Should return the currentLocation",
    () async {
      // Arrange
      when(mockGeoLocationRepository.getCurrentLocation()).thenReturn(right(currentLocation));
      // Act
      final result = useCase(NoParams());
      // Assert
      expect(result, right(currentLocation));
    },
  );
  test(
    "Should return GeoLocationError",
    () async {
      // Arrange
      const coreFailure = CoreDataFailure.geoLocationError();
      when(mockGeoLocationRepository.getCurrentLocation()).thenReturn(left(coreFailure));
      // Act
      final result = useCase(NoParams());
      // Assert
      expect(result, left(coreFailure));
    },
  );
}
