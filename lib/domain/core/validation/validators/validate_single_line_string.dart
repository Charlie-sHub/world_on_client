import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<String>, String> validateSingleLineString(String input) {
  if (!input.contains("\n")) {
    return right(input);
  } else {
    return left(ValueFailure.multiLineString(failedValue: input));
  }
}
