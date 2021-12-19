import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<KtSet<T>>, KtSet<T>> validateNotEmptySet<T>(
  KtSet<T> input,
) {
  if (input.isNotEmpty()) {
    return right(input);
  } else {
    return left(ValueFailure.emptySet(failedValue: input));
  }
}
