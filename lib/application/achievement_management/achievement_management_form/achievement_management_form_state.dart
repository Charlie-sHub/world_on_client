part of 'achievement_management_form_bloc.dart';

@freezed
abstract class AchievementManagementFormState with _$AchievementManagementFormState {
  const factory AchievementManagementFormState({
    @required Achievement achievement,
    @required bool showErrorMessage,
    @required bool isEditing,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _AchievementManagementFormState;

  factory AchievementManagementFormState.initial() => AchievementManagementFormState(
        achievement: Achievement.empty(),
        showErrorMessage: false,
        isEditing: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
