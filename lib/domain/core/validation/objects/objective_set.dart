import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_max_set_length.dart';
import 'package:worldon/domain/core/validation/validators/validate_not_empty_set.dart';

class ObjectiveSet extends ValueObject<Set<Objective>> {
  @override
  final Either<ValueFailure<Set<Objective>>, Set<Objective>> value;

  // Just a value that made sense at the time
  static const maxLength = 10;

  factory ObjectiveSet(Set<Objective> input) {
    assert(input != null);
    return ObjectiveSet._(
      validateNotEmptySet(input).flatMap(
        (input) => validateMaxSetLength(
          input: input,
          maxLength: maxLength,
        ),
      ),
    );
  }

  const ObjectiveSet._(this.value);

  @override
  List<Object> get props => [value];
}
