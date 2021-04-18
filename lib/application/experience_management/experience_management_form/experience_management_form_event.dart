part of 'experience_management_form_bloc.dart';

@freezed
class ExperienceManagementFormEvent with _$ExperienceManagementFormEvent {
  const factory ExperienceManagementFormEvent.initialized(Option<Experience> experienceOption) = _Initialized;

  const factory ExperienceManagementFormEvent.titleChanged(String title) = _TitleChanged;

  const factory ExperienceManagementFormEvent.descriptionChanged(String description) = _DescriptionChanged;

  const factory ExperienceManagementFormEvent.imageDeleted(String imageURL) = _ImageDeleted;

  const factory ExperienceManagementFormEvent.imagesChanged(List<Asset> imageAssets) = _ImagesChanged;

  const factory ExperienceManagementFormEvent.coordinatesChanged({
    required double latitude,
    required double longitude,
  }) = _CoordinatesChanged;

  const factory ExperienceManagementFormEvent.difficultyChanged(int difficulty) = _DifficultyChanged;

  const factory ExperienceManagementFormEvent.objectivesChanged(KtList<Objective> objectives) = _ObjectivesChanged;

  const factory ExperienceManagementFormEvent.rewardsChanged(KtSet<Reward> rewards) = _RewardsChanged;

  const factory ExperienceManagementFormEvent.tagsChanged(KtSet<Tag> tags) = _TagsChanged;

  const factory ExperienceManagementFormEvent.submitted() = _Submitted;
}
