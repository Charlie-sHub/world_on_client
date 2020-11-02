import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_bounded_integer.dart';

class UserLevel extends ValueObject<int> {
  static const limit = 100;

  @override
  final Either<ValueFailure<int>, int> value;

  factory UserLevel(int input) {
    assert(input != null);
    return UserLevel._(
      validateBoundedInteger(
        input: input,
        limit: limit,
      ),
    );
  }

  const UserLevel._(this.value);

  @override
  List<Object> get props => [value];
}
