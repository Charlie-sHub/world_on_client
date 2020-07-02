part of 'registration_form_bloc.dart';

@freezed
abstract class RegistrationFormState with _$RegistrationFormState {
  const factory RegistrationFormState({
    @required User user,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _RegistrationFormState;

  factory RegistrationFormState.initial() => RegistrationFormState(
        user: User.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
