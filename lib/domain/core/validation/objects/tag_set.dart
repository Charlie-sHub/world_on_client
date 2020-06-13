import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';

// Maybe it could be reworked in the future if it's worth it
@Deprecated("Rather useless as the validator takes Set<dynamic> as input so it doesn't work with a Set<Tag>")
class TagSet extends ValueObject<Set<Tag>> {
  @override
  final Either<ValueFailure<Set<Tag>>, Set<Tag>> value;

  factory TagSet(Set<Tag> input) {
    assert(input != null);
    return null;
    // TagSet._(validateFilledSet(input));
  }

  const TagSet._(this.value);

  @override
  List<Object> get props => [value];
}
