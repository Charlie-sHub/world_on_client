part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authenticationCheckRequest() = _AuthenticationCheckRequest;

  const factory AuthenticationEvent.logOut() = _LogOut;
}
