import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_string_length.dart';

class Name extends ValueObject<String> {
  static const maxLength = 20;

  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    assert(input != null);
    return Name._(validateStringLength(
      input: input,
      length: maxLength,
    ));
  }

  const Name._(this.value);

  @override
  List<Either> get props => [value];
}
