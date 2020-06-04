import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_bounded_integer.dart';

class Difficulty extends ValueObject<int> {
  static const limit = 10;

  @override
  final Either<ValueFailure<int>, int> value;

  factory Difficulty(int input) {
    assert(input != null);
    return Difficulty._(validateBoundedInteger(
      input: input,
      limit: limit,
    ));
  }

  const Difficulty._(this.value);

  @override
  List<Object> get props => [value];
}
