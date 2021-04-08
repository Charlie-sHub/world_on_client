part of 'experience_editing_form_bloc.dart';

@freezed
abstract class ExperienceEditingFormState with _$ExperienceEditingFormState {
  const factory ExperienceEditingFormState({
    @required Experience experience,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool loadedCoordinates,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _ExperienceEditingFormState;

  factory ExperienceEditingFormState.initial() => ExperienceEditingFormState(
        experience: Experience.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        loadedCoordinates: false,
        failureOrSuccessOption: none(),
      );
}
