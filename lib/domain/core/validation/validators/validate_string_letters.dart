import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

// Is this really necessary? it was meant for checking that the names of the Users are real names, but why bother?
Either<ValueFailure<String>, String> validateStringLetters(String input) {
  const _regex = r'^[a-zA-Z]+$';
  final _regExp = RegExp(
    _regex,
    unicode: true,
  );
  if (_regExp.hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.stringWithInvalidCharacters(failedValue: input),
    );
  }
}
