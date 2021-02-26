part of 'registration_form_bloc.dart';

@freezed
abstract class RegistrationFormState with _$RegistrationFormState {
  const factory RegistrationFormState({
    @required User user,
    @required PasswordConfirmator passwordConfirmator,
    @required String passwordToCompare,
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
        passwordToCompare: "",
        showErrorMessages: false,
        isSubmitting: false,
        // TODO: change this back to false when the actual terms and conditions have ben created
        acceptedEULA: true,
        failureOrSuccessOption: none(),
      );
}
