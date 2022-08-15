import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_bounded_integer.dart';

class UserLevel extends ValueObject<int> {
  static const _limit = 100;

  @override
  final Either<ValueFailure<int>, int> value;

  factory UserLevel(int input) => UserLevel._(
        validateBoundedInteger(
          input: input,
          limit: _limit,
        ),
      );

  const UserLevel._(this.value);

  @override
  List<Object> get props => [value];
}

const _multiplier = 100;

/// Gives the experience points required to get to the given level
int experiencePointsRequired(int level) => level * _multiplier;

/// Gives the maximum level by the given experience points
int levelAt(int experiencePoints) {
  int level = 0;
  int experiencePointsComparison = 0;
  for (int i = 1; experiencePointsComparison <= experiencePoints; i++) {
    level++;
    experiencePointsComparison += experiencePointsRequired(i);
  }
  return level - 1;
}
