part of 'experience_editing_form_bloc.dart';

@freezed
class ExperienceEditingFormState with _$ExperienceEditingFormState {
  const factory ExperienceEditingFormState({
    required Experience experience,
    required List<String> imageUrlsToDelete,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool loadedCoordinates,
    required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _ExperienceEditingFormState;

  factory ExperienceEditingFormState.initial() => ExperienceEditingFormState(
        experience: Experience.empty(),
        imageUrlsToDelete: [],
        showErrorMessages: false,
        isSubmitting: false,
        loadedCoordinates: false,
        failureOrSuccessOption: none(),
      );
}
