import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/coordinates.dart';
import 'package:worldon/domain/core/repository/geo_location_repository_interface.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class GetCurrentLocation implements UseCase<Coordinates, NoParams> {
  final GeoLocationRepositoryInterface _repository;

  GetCurrentLocation(this._repository);

  @override
  Either<Failure, Coordinates> call(NoParams params) {
    return _repository.getCurrentLocation();
  }
}
