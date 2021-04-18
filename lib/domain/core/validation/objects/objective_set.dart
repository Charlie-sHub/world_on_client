import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_max_list_length.dart';
import 'package:worldon/domain/core/validation/validators/validate_not_empty_list.dart';

class ObjectiveList extends ValueObject<KtList<Objective>> {
  @override
  final Either<ValueFailure<KtList<Objective>>, KtList<Objective>> value;

  // Just a value that made sense at the time
  static const maxLength = 20;

  factory ObjectiveList(KtList<Objective> input) => ObjectiveList._(
        validateNotEmptyList(input).flatMap(
          (input) => validateMaxListLength(
            input: input,
            maxLength: maxLength,
          ),
        ),
      );

  const ObjectiveList._(this.value);

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
    return value.getOrElse(() => const KtList<Objective>.empty()).size;
  }

  bool get isFull {
    return length == maxLength;
  }

  bool get isEmpty {
    return value.getOrElse(() => const KtList<Objective>.empty()).isEmpty();
  }

  bool get isNotEmpty {
    return value.getOrElse(() => const KtList<Objective>.empty()).isNotEmpty();
  }

  @override
  List<Object> get props => [value];
}
