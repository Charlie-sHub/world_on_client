import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_string_length.dart';

class CommentContent extends ValueObject<String> {
  static const maxLength = 1000;

  @override
  final Either<ValueFailure<String>, String> value;

  factory CommentContent(String input) {
    assert(input != null);
    return CommentContent._(validateStringLength(
      input: input,
      length: maxLength,
    ));
  }

  const CommentContent._(this.value);

  @override
  List<Either> get props => [value];
}
