part of 'log_in_form_bloc.dart';

@freezed
abstract class LogInFormState with _$LogInFormState {
  const factory LogInFormState({
    @required EmailAddress email,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _LogInFormState;

  factory LogInFormState.initial() => LogInFormState(
    email: EmailAddress(""),
        password: Password(""),
        showErrorMessages: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
