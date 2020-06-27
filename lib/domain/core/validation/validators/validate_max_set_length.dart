import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<KtSet<T>>, KtSet<T>> validateMaxSetLength<T>({KtSet<T> input, int maxLength}) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.setExceedsLength(
      failedValue: input,
      maxLength: maxLength,
    ));
  }
}
