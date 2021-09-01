part of 'forgotten_password_form_bloc.dart';

@freezed
class ForgottenPasswordFormEvent with _$ForgottenPasswordFormEvent {
  const factory ForgottenPasswordFormEvent.emailChanged(String email) = _EmailChanged;

  const factory ForgottenPasswordFormEvent.sentRequest() = _SentRequest;
}
