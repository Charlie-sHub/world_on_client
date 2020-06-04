import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_string_length.dart';

class MessageContent extends ValueObject<String> {
  static const maxLength = 200;

  @override
  final Either<ValueFailure<String>, String> value;

  factory MessageContent(String input) {
    assert(input != null);
    return MessageContent._(validateStringLength(
      input: input,
      length: maxLength,
    ));
  }

  const MessageContent._(this.value);

  @override
  List<Either> get props => [value];
}
