import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/use_case/get_current_location.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../../lib/domain/core/repository/geo_location_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockGeoLocationRepository mockGeoLocationRepository;
  GetCurrentLocation useCase;
  setUp(
    () {
      mockGeoLocationRepository = MockGeoLocationRepository();
      useCase = GetCurrentLocation(mockGeoLocationRepository);
    },
  );
  final currentLocation = Coordinates.empty();
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
      const failure = Failure.coreData(CoreDataFailure.geoLocationError(errorString: TestDescription.errorString));
      when(mockGeoLocationRepository.getCurrentLocation()).thenReturn(left(failure));
      // Act
      final result = useCase(NoParams());
      // Assert
      expect(result, left(failure));
    },
  );
}
