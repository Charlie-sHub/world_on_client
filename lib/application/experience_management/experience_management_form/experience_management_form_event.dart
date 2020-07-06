part of 'experience_management_form_bloc.dart';

@freezed
abstract class ExperienceManagementFormEvent with _$ExperienceManagementFormEvent {
  const factory ExperienceManagementFormEvent.initialized(Option<Experience> experienceOption) = _Initialized;

  const factory ExperienceManagementFormEvent.nameChanged(String name) = _NameChanged;

  const factory ExperienceManagementFormEvent.descriptionChanged(String description) = _DescriptionChanged;

  const factory ExperienceManagementFormEvent.coordinatesChanged({
    @required double latitude,
    @required double longitude,
  }) = _CoordinatesChanged;
  
  const factory ExperienceManagementFormEvent.difficultyChanged(int difficulty) = _DifficultyChanged;
  
  const factory ExperienceManagementFormEvent.objectivesChanged(KtSet<PrimitiveObjective> objectives) = _ObjectivesChanged;
  
  const factory ExperienceManagementFormEvent.rewardsChanged(KtSet<PrimitiveReward> rewards) = _RewardsChanged;
  
  const factory ExperienceManagementFormEvent.tagsChanged(KtSet<Tag> tags) = _TagsChanged;
  
  const factory ExperienceManagementFormEvent.submitted() = _Submitted;
}
