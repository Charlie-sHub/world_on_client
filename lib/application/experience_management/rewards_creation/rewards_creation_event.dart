part of 'rewards_creation_bloc.dart';

@freezed
class RewardsCreationEvent with _$RewardsCreationEvent {
  const factory RewardsCreationEvent.initialized(Option<RewardSet> rewardSetOption) = _Initialized;

  const factory RewardsCreationEvent.addedReward(Reward reward) = _AddedReward;

  const factory RewardsCreationEvent.removedReward(Reward reward) = _RemovedReward;
}
