import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<double>, double> validateCoordinate({double limit, double input}) {
  if (limit == null || input == null) {
    return left(const ValueFailure.nullInput());
  } else if (input >= -limit && input <= limit) {
    return right(input);
  } else {
    return left(ValueFailure.invalidCoordinate(coordinate: input));
  }
}
