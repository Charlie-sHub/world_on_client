part of 'profile_editing_form_bloc.dart';

@freezed
abstract class ProfileEditingFormState with _$ProfileEditingFormState {
  const factory ProfileEditingFormState({
    @required User user,
    @required PasswordConfirmator passwordConfirmator,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _ProfileEditingFormState;

  factory ProfileEditingFormState.initial() => ProfileEditingFormState(
        user: User.empty(),
        passwordConfirmator: PasswordConfirmator(
          password: "",
          confirmation: "",
        ),
        showErrorMessages: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
