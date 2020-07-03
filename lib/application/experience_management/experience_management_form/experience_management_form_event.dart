part of 'experience_management_form_bloc.dart';

@freezed
abstract class ExperienceManagementFormEvent with _$ExperienceManagementFormEvent {
  const factory ExperienceManagementFormEvent.initialized(Option<Experience> experienceOption) = _Initialized;

  const factory ExperienceManagementFormEvent.nameChange(String name) = _NameChange;

  const factory ExperienceManagementFormEvent.descriptionChange(String description) = _DescriptionChange;

  const factory ExperienceManagementFormEvent.coordinatesChange({
    @required double latitude,
    @required double longitude,
  }) = _CoordinatesChange;

  const factory ExperienceManagementFormEvent.difficultyChange(int difficulty) = _DifficultyChange;

  const factory ExperienceManagementFormEvent.objectivesChange(List<PrimitiveObjective> objectives) = _ObjectivesChange;

  const factory ExperienceManagementFormEvent.rewardsChange(List<PrimitiveReward> rewards) = _RewardsChange;

  const factory ExperienceManagementFormEvent.tagsChange(Set<Tag> tags) = _TagsChange;

  const factory ExperienceManagementFormEvent.submit() = _Submit;
}
