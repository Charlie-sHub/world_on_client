import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/entities/Reward.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_max_set_length.dart';

class RewardSet extends ValueObject<Set<Reward>> {
  @override
  final Either<ValueFailure<Set<Reward>>, Set<Reward>> value;

  // Just a value that made sense at the time
  static const maxLength = 5;

  factory RewardSet(Set<Reward> input) {
    assert(input != null);
    return RewardSet._(
      validateMaxSetLength(
        input: input,
        maxLength: maxLength,
      ),
    );
  }

  const RewardSet._(this.value);

  @override
  List<Object> get props => [value];
}
