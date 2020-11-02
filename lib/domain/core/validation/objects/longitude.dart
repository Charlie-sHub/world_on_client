import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_coordinate.dart';

class Longitude extends ValueObject<double> {
  static const limit = 180.0;

  @override
  final Either<ValueFailure<double>, double> value;

  factory Longitude(double input) {
    assert(input != null);
    return Longitude._(
      validateCoordinate(
        limit: limit,
        input: input,
      ),
    );
  }

  const Longitude._(this.value);

  @override
  List<Object> get props => [value];
}
