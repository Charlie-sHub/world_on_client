part of 'experience_editing_form_bloc.dart';

@freezed
abstract class ExperienceEditingFormEvent with _$ExperienceEditingFormEvent {
  const factory ExperienceEditingFormEvent.initialized(Experience experience) = _Initialized;

  const factory ExperienceEditingFormEvent.titleChanged(String title) = _TitleChanged;

  const factory ExperienceEditingFormEvent.descriptionChanged(String description) = _DescriptionChanged;

  const factory ExperienceEditingFormEvent.imagesChanged(List<Asset> imageAssets) = _ImagesChanged;

  const factory ExperienceEditingFormEvent.imageDeleted(String imageURL) = _ImageDeleted;

  const factory ExperienceEditingFormEvent.coordinatesChanged({
    @required double latitude,
    @required double longitude,
  }) = _CoordinatesChanged;

  const factory ExperienceEditingFormEvent.difficultyChanged(int difficulty) = _DifficultyChanged;

  const factory ExperienceEditingFormEvent.objectivesChanged(KtList<Objective> objectives) = _ObjectivesChanged;

  const factory ExperienceEditingFormEvent.rewardsChanged(KtSet<Reward> rewards) = _RewardsChanged;

  const factory ExperienceEditingFormEvent.tagsChanged(KtSet<Tag> tags) = _TagsChanged;

  const factory ExperienceEditingFormEvent.submitted() = _Submitted;
}
