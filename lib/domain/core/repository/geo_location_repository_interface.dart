import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

/// Repository for the features and use-cases that require GPS positioning
abstract class GeoLocationRepositoryInterface {
  /// Returns the coordinates defining the current position of the [User]
  Future<Either<Failure, Coordinates>> getCurrentLocation();

// TODO: create coordinateStream to listen for location changes
// check https://pub.dev/packages/geolocator getPositionStream
}
