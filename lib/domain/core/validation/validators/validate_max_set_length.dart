import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<Set<T>>, Set<T>> validateMaxSetLength<T>({Set<T> input, int maxLength}) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.setExceedsLength(
      failedValue: input,
      maxLength: maxLength,
    ));
  }
}
