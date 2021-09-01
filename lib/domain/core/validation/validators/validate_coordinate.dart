import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<double>, double> validateCoordinate({
  required double limit,
  required double input,
}) {
  if (input >= -limit && input <= limit) {
    return right(input);
  } else {
    return left(ValueFailure.invalidCoordinate(failedValue: input));
  }
}
