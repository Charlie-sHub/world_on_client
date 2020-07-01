part of 'achievement_management_form_bloc.dart';

@freezed
abstract class AchievementManagementFormEvent with _$AchievementManagementFormEvent {
  const factory AchievementManagementFormEvent.initialized(Option<Achievement> achievementOption) = _Initialized;

  const factory AchievementManagementFormEvent.nameChange(String name) = _NameChange;

  const factory AchievementManagementFormEvent.descriptionChange(String description) = _DescriptionChange;

  const factory AchievementManagementFormEvent.experiencePointsChange(int experiencePoints) = _ExperiencePointsChange;

  const factory AchievementManagementFormEvent.tagsChange(KtSet<Tag> tags) = _TagsChange;

  const factory AchievementManagementFormEvent.submit() = _Submit;
// TODO: Add imageChange event to this and all the other blocs that require it
}
