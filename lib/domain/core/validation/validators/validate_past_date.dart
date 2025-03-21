import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<DateTime>, DateTime> validatePastDate(DateTime input) {
  if (!DateTime.now().isBefore(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidDate(failedValue: input));
  }
}
