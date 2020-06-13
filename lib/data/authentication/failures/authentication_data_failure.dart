import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/core/error/failures.dart';

part 'authentication_data_failure.freezed.dart';

@freezed
abstract class AuthenticationDataFailure extends Failure with _$AuthenticationDataFailure {
  const factory AuthenticationDataFailure.invalidCredentials() = InvalidCredentials;

  const factory AuthenticationDataFailure.noUserInCache() = NoUserInCache;
}
