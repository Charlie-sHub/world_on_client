part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;

  const factory AuthenticationState.authenticationSuccess() = _AuthenticationSuccess;

  const factory AuthenticationState.authenticationFailure() = _AuthenticationFailure;
}
