import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/coordinates.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Repository for the features and use-cases that require GPS positioning
abstract class GeoLocationRepositoryInterface {
  /// Returns the coordinates defining the current position of the [User]
  Either<Failure, Coordinates> getCurrentLocation();
}
