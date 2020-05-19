import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';

part 'authentication_failure.freezed.dart';

@freezed
abstract class AuthenticationFailure extends Failure with _$AuthenticationFailure {
  const factory AuthenticationFailure.cancelledByUser() = CancelledByUser;

  const factory AuthenticationFailure.serverError() = ServerError;

  const factory AuthenticationFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  const factory AuthenticationFailure.invalidEmailAndPasswordCombination() = InvalidEmailAndPasswordCombination;
}
