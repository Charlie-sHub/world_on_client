import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_max_set_length.dart';
import 'package:worldon/domain/core/validation/validators/validate_not_empty_set.dart';

class ObjectiveSet extends ValueObject<KtSet<Objective>> {
  @override
  final Either<ValueFailure<KtSet<Objective>>, KtSet<Objective>> value;

  // Just a value that made sense at the time
  static const maxLength = 10;

  factory ObjectiveSet(KtSet<Objective> input) {
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
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (failure) => left(failure),
      (objectiveSet) => objectiveSet
          .map(
            (objective) => objective.failureOption,
          )
          .filter(
            (option) => option.isSome(),
          )
          .getOrElse(
            0,
            (_) => none(),
          )
          .fold(
            () => right(unit),
            (failure) => left(failure),
          ),
    );
  }

  int get length {
    return value.getOrElse(() => const KtSet<Objective>.empty()).size;
  }

  bool get isFull {
    return length == maxLength;
  }

  bool get isEmpty {
    return value.getOrElse(() => const KtSet<Objective>.empty()).isEmpty();
  }

  bool get isNotEmpty {
    return value.getOrElse(() => const KtSet<Objective>.empty()).isNotEmpty();
  }

  @override
  List<Object> get props => [value];
}
