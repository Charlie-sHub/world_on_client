part of 'experience_management_form_bloc.dart';

@freezed
class ExperienceManagementFormState with _$ExperienceManagementFormState {
  const factory ExperienceManagementFormState({
    required Experience experience,
    required List<String> originalImageUrls,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSubmitting,
    required bool loadedCoordinates,
    required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _ExperienceManagementFormState;

  factory ExperienceManagementFormState.initial() => ExperienceManagementFormState(
        experience: Experience.empty(),
        originalImageUrls: [],
        showErrorMessages: false,
        isEditing: false,
        isSubmitting: false,
        loadedCoordinates: false,
        failureOrSuccessOption: none(),
      );
}
