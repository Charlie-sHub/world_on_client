part of 'rewards_creation_bloc.dart';

@freezed
abstract class RewardsCreationEvent with _$RewardsCreationEvent {
  const factory RewardsCreationEvent.addedReward(Reward reward) = _AddedReward;

  const factory RewardsCreationEvent.removedReward(Reward reward) = _RemovedReward;
}
