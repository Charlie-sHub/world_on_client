part of 'rewards_creation_bloc.dart';

@freezed
abstract class RewardsCreationState with _$RewardsCreationState {
  const factory RewardsCreationState({@required KtSet<Reward> rewardsCreated}) = _RewardsCreationState;

  factory RewardsCreationState.initial() => const RewardsCreationState(rewardsCreated: KtSet.empty());
}
