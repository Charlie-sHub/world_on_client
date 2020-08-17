import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_geo_location_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_coordinates.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/repository/geo_location_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: GeoLocationRepositoryInterface, env: [Environment.dev])
class DevelopmentGeoLocationRepository implements GeoLocationRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();

  @override
  Either<Failure, Coordinates> getCurrentLocation() {
    if (_random.nextBool()) {
      return right(getValidCoordinates());
    } else {
      return left(getGeoLocationError());
    }
  }
}
