import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/repository/geo_location_repository_interface.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

@LazySingleton(as: GeoLocationRepositoryInterface, env: [Environment.prod])
class ProductionGeoLocationRepository implements GeoLocationRepositoryInterface {
  final _logger = Logger();

  @override
  Future<Either<Failure, Coordinates>> getCurrentLocation() async {
    try {
      final _position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      final _coordinates = Coordinates(
        latitude: Latitude(_position.latitude),
        longitude: Longitude(_position.longitude),
      );
      return right(_coordinates);
    } catch (exception) {
      final _errorMessage = "Geolocation error: $exception";
      _logger.e(_errorMessage);
      return left(
        Failure.coreData(
          CoreDataFailure.geoLocationError(
            errorString: _errorMessage,
          ),
        ),
      );
    }
  }
}
