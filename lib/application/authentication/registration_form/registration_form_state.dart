part of 'registration_form_bloc.dart';

@freezed
abstract class RegistrationFormState with _$RegistrationFormState {
  const factory RegistrationFormState({
    @required User user,
    @required PasswordConfirmator passwordConfirmator,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool acceptedEULA,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _RegistrationFormState;

  factory RegistrationFormState.initial() => RegistrationFormState(
        user: User.empty(),
        passwordConfirmator: PasswordConfirmator(
          password: "",
          confirmation: "",
        ),
        showErrorMessages: false,
        isSubmitting: false,
        acceptedEULA: false,
        failureOrSuccessOption: none(),
      );
}
