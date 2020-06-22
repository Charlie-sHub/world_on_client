import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<Set<T>>, Set<T>> validateNotEmptySet<T>(Set<T> input) {
  if (input == null) {
    return left(const ValueFailure.nullInput());
  } else if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptySet(failedValue: input));
  }
}
