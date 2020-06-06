import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_string_length.dart';

class EntityDescription extends ValueObject<String> {
  static const maxLength = 300;

  @override
  final Either<ValueFailure<String>, String> value;

  factory EntityDescription(String input) {
    assert(input != null);
    return EntityDescription._(validateStringLength(
      input: input,
      length: maxLength,
    ));
  }

  const EntityDescription._(this.value);

  @override
  List<Either> get props => [value];
}
