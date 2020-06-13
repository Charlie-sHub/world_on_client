import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<int>, int> validateBoundedInteger({@required int limit, @required int input}) {
  if (input == null || limit == null) {
    return left(const ValueFailure.nullInput());
  } else if (input <= limit && input >= 0) {
    return right(input);
  } else {
    return left(ValueFailure.integerOutOfBounds(failedValue: input));
  }
}
