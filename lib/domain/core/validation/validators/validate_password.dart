import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<String>, String> validatePassword(String input) {
  // A regex could be added to set password requirements, such as having at least one number, mixing upper and lower case letters, etc.
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}
