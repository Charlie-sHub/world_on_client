part of 'experience_management_form_bloc.dart';

@freezed
abstract class ExperienceManagementFormState with _$ExperienceManagementFormState {
  const factory ExperienceManagementFormState({
    @required Experience experience,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _ExperienceManagementFormState;

  factory ExperienceManagementFormState.initial() => ExperienceManagementFormState(
        experience: Experience.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
