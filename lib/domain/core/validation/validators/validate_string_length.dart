import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<String>, String> validateStringLength({String input, int length}) {
  if (input == null) {
    return left(const ValueFailure.nullInput());
  } else if (input.length <= length) {
    return right(input);
  } else {
    return left(ValueFailure.stringExceedsLength(failedValue: input));
  }
}
