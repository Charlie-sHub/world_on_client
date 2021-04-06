import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<KtList<T>>, KtList<T>> validateNotEmptyList<T>(KtList<T> input) {
  if (input == null) {
    return left(const ValueFailure.nullInput());
  } else if (input.isNotEmpty()) {
    return right(input);
  } else {
    return left(ValueFailure.emptyList(failedValue: input));
  }
}
