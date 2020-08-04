import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_same_string.dart';
import 'package:worldon/domain/core/validation/validators/validate_string_not_empty.dart';

class PasswordConfirmator extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PasswordConfirmator({
    @required String password,
    @required String confirmation,
  }) {
    assert(password != null);
    assert(confirmation != null);
    return PasswordConfirmator._(
      validateSameString(
        confirmation,
        password,
      ).flatMap(validateStringNotEmpty),
    );
  }

  const PasswordConfirmator._(this.value);

  @override
  List<Either> get props => [value];
}
