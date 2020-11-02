import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input == null) {
    return left(const ValueFailure.nullInput());
  } else if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptyString(failedValue: input));
  }
}
