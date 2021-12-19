part of 'achievement_management_form_bloc.dart';

@freezed
class AchievementManagementFormEvent with _$AchievementManagementFormEvent {
  const factory AchievementManagementFormEvent.initialized(
    Option<Achievement> achievementOption,
  ) = _Initialized;

  const factory AchievementManagementFormEvent.nameChanged(
    String name,
  ) = _NameChanged;

  const factory AchievementManagementFormEvent.descriptionChanged(
    String description,
  ) = _DescriptionChanged;

  const factory AchievementManagementFormEvent.experiencePointsChanged(
    int experiencePoints,
  ) = _ExperiencePointsChanged;

  const factory AchievementManagementFormEvent.tagsChanged(
    KtSet<Tag> tags,
  ) = _TagsChanged;

  const factory AchievementManagementFormEvent.imageChanged(
    File image,
  ) = _ImageChanged;

  const factory AchievementManagementFormEvent.submitted() = _Submitted;
}
