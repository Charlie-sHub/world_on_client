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

@LazySingleton(as: GeoLocationRepositoryInterface, env: [Environment.dev])
class DevelopmentGeoLocationRepository implements GeoLocationRepositoryInterface {
  final Logger _logger;

  DevelopmentGeoLocationRepository(this._logger);

  @override
  Future<Either<Failure, Coordinates>> getCurrentLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      final coordinates = Coordinates(
        latitude: Latitude(position.latitude),
        longitude: Longitude(position.longitude),
      );
      return right(coordinates);
    } catch (exception) {
      final errorMessage = "Geolocation error: $exception";
      _logger.e(errorMessage);
      return left(
        Failure.coreData(
          CoreDataFailure.geoLocationError(
            errorString: errorMessage,
          ),
        ),
      );
    }
  }
}
