part of 'log_in_form_bloc.dart';

@freezed
abstract class LogInFormEvent with _$LogInFormEvent {
  const factory LogInFormEvent.usernameChange(String username) = _UsernameChange;

  const factory LogInFormEvent.passwordChange(String password) = _PasswordChange;

  const factory LogInFormEvent.logIn() = _LogIn;

  const factory LogInFormEvent.logInGoogle() = _LogInGoogle;
}
