part of 'log_in_form_bloc.dart';

@freezed
abstract class LogInFormEvent with _$LogInFormEvent {
  const factory LogInFormEvent.usernameChanged(String username) = _UsernameChanged;

  const factory LogInFormEvent.passwordChanged(String password) = _PasswordChanged;

  const factory LogInFormEvent.loggedIn() = _LoggedIn;

  const factory LogInFormEvent.loggedInGoogle() = _LoggedInGoogle;
}
