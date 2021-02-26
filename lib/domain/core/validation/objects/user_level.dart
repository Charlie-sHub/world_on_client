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

// TODO: Should this be getters of UserLevel?
class Levels {
  // TODO: Make a geometric leveling system
  static const _multiplier = 100;

  /// Gives the experience points required to get to the given level
  static int experiencePointsRequired(int level) => level * _multiplier;

  /// Gives the maximum level by the given experience points
  static int levelAt(int experiencePoints) {
    int _level = 0;
    int _experiencePointsComparison = 0;
    for (int i = 1; _experiencePointsComparison <= experiencePoints; i++) {
      _level++;
      _experiencePointsComparison += experiencePointsRequired(i);
    }
    return _level - 1;
  }
}
