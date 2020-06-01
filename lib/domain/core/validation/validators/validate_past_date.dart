import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<DateTime>, DateTime> validatePastDate(DateTime input) {
  if (input == null) {
    return left(const ValueFailure.nullInput());
  } else if (DateTime.now().isAfter(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidDate(failedValue: input));
  }
}
