import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/repository/geo_location_repository_interface.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class GetCurrentLocation implements AsyncUseCase<Coordinates, NoParams> {
  final GeoLocationRepositoryInterface _repository;

  GetCurrentLocation(this._repository);

  @override
  Future<Either<Failure, Coordinates>> call(NoParams params) async {
    return _repository.getCurrentLocation();
  }
}
