import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<String>, String> validateSameString(
  String firstInput,
  String secondInput,
) {
  if (firstInput == secondInput) {
    return right(firstInput);
  } else {
    return left(ValueFailure.stringMismatch(failedValue: secondInput));
  }
}
