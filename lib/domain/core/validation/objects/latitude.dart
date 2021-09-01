import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_coordinate.dart';

class Latitude extends ValueObject<double> {
  static const limit = 90.0;

  @override
  final Either<ValueFailure<double>, double> value;

  factory Latitude(double input) => Latitude._(
        validateCoordinate(
          limit: limit,
          input: input,
        ),
      );

  const Latitude._(this.value);

  @override
  List<Object> get props => [value];
}
