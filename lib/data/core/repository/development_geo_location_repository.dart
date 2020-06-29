import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/repository/geo_location_repository_interface.dart';

@LazySingleton(
  as: GeoLocationRepositoryInterface,
  env: Environment.dev,
)
class DevelopmentGeoLocationRepository implements GeoLocationRepositoryInterface {
  @override
  Either<Failure, Coordinates> getCurrentLocation() {
    // TODO: implement getCurrentLocation
    throw UnimplementedError();
  }
}
