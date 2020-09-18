part of 'reward_form_bloc.dart';

@freezed
abstract class RewardFormEvent with _$RewardFormEvent {
  const factory RewardFormEvent.nameChanged(String name) = _NameChanged;

  const factory RewardFormEvent.descriptionChanged(String description) = _DescriptionChanged;

  const factory RewardFormEvent.imageChanged(File imageFile) = _ImageChanged;

  const factory RewardFormEvent.submitted() = _Submitted;
}
