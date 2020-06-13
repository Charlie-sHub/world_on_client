import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

// Maybe it could be reworked in the future if it's worth it
@Deprecated("Rather useless as it takes Set<dynamic> so it doesn't work with Sets of entities")
Either<ValueFailure<Set>, Set> validateFilledSet(Set input) {
  if (input == null) {
    return left(const ValueFailure.nullInput());
  } else if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptySet(set: input));
  }
}
