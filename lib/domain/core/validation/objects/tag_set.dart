import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_max_set_length.dart';
import 'package:worldon/domain/core/validation/validators/validate_not_empty_set.dart';

class TagSet extends ValueObject<Set<Tag>> {
  @override
  final Either<ValueFailure<Set<Tag>>, Set<Tag>> value;

  // Just a value that made sense at the time
  static const maxLength = 10;

  factory TagSet(Set<Tag> input) {
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
  List<Object> get props => [value];
}
