import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_max_set_length.dart';
import 'package:worldon/domain/core/validation/validators/validate_not_empty_set.dart';

class TagSet extends ValueObject<KtSet<Tag>> {
  @override
  final Either<ValueFailure<KtSet<Tag>>, KtSet<Tag>> value;

  // Just a value that made sense at the time
  // Maybe there shouldn't even be a maximum amount of tags
  static const maxLength = 10;

  factory TagSet(KtSet<Tag> input) {
    assert(input != null);
    return TagSet._(
      validateNotEmptySet(input).flatMap(
        (input) => validateMaxSetLength(
          input: input,
          maxLength: maxLength,
        ),
      ),
    );
  }

  const TagSet._(this.value);

  @override
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (failure) => left(failure),
      (tagSet) => tagSet
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
    return value.getOrElse(() => KtSet<Tag>.empty()).size;
  }

  bool get isFull {
    return length == maxLength;
  }

  @override
  List<Object> get props => [value];
}
