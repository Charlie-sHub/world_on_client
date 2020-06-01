import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

Either<ValueFailure<String>, String> validateStringLetters(String input) {
  // TODO: Add support for non latin alphabets
  const regex = r'^[a-zA-Z]+$';
  final regExp = RegExp(regex, unicode: true);
  if (input == null) {
    return left(const ValueFailure.nullInput());
  } else if (regExp.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.stringWithInvalidCharacters(failedValue: input));
  }
}
