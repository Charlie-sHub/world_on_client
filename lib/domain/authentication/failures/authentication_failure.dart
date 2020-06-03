import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/core/error/failures.dart';

part 'authentication_failure.freezed.dart';

@freezed
abstract class AuthenticationFailure extends Failure with _$AuthenticationFailure {
  const factory AuthenticationFailure.cancelledByUser() = CancelledByUser;

  const factory AuthenticationFailure.serverError() = ServerError;

  const factory AuthenticationFailure.invalidEmailAndPasswordCombination() = InvalidEmailAndPasswordCombination;

  // Could use NotFoundError instead
  const factory AuthenticationFailure.noUserInCache() = NoUserInCache;

// Moved to Core, since editing profiles could also return this failure
// const factory AuthenticationFailure.usernameAlreadyInUse() = UsernameAlreadyInUse;
// const factory AuthenticationFailure.emailAlreadyInUse() = EmailAlreadyInUse;
}
