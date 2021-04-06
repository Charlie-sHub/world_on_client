import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>({KtList<T> input, int maxLength}) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.collectionExceedsLength(
      failedValue: input,
      maxLength: maxLength,
    ));
  }
}
