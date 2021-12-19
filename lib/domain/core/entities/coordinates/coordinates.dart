import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

part 'coordinates.freezed.dart';

/// This class exists to decouple the domain layer's code from external libraries regarding location
// It's honestly a bit overkill even for me, but i don't think that the core of the application should have classes that belong to external libraries
// like Position in the geolocator library, hence the creation of this class
@freezed
class Coordinates with _$Coordinates {
  const Coordinates._();

  const factory Coordinates({
    required Latitude latitude,
    required Longitude longitude,
  }) = _Coordinates;

  factory Coordinates.empty() => Coordinates(
        latitude: Latitude(0.0),
        longitude: Longitude(0.0),
      );

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit =>
      latitude.failureOrUnit.andThen(longitude.failureOrUnit).fold(
            (failure) => left(failure),
            (_) => right(unit),
          );

  bool get isValid => failureOrUnit.isRight();
}
