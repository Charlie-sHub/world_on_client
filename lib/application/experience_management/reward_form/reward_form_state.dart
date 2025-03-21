part of 'reward_form_bloc.dart';

@freezed
class RewardFormState with _$RewardFormState {
  const factory RewardFormState({
    required Reward reward,
    required bool showErrorMessages,
    required bool isSubmitting,
  }) = _RewardFormState;

  factory RewardFormState.initial() => RewardFormState(
        reward: Reward.empty(),
        showErrorMessages: false,
        isSubmitting: false,
      );
}
