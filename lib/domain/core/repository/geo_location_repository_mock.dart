import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/repository/geo_location_repository_interface.dart';

@LazySingleton(
  as: GeoLocationRepositoryInterface,
  env: Environment.test,
)
class MockGeoLocationRepository extends Mock implements GeoLocationRepositoryInterface {}
