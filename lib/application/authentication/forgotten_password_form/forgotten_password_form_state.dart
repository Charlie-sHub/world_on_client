part of 'forgotten_password_form_bloc.dart';

@freezed
class ForgottenPasswordFormState with _$ForgottenPasswordFormState {
  const factory ForgottenPasswordFormState({
    required EmailAddress email,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _ForgottenPasswordFormState;

  factory ForgottenPasswordFormState.initial() => ForgottenPasswordFormState(
        email: EmailAddress(""),
        showErrorMessages: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
