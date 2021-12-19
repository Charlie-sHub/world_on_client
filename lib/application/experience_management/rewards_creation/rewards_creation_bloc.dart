import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';

part 'rewards_creation_bloc.freezed.dart';
part 'rewards_creation_event.dart';
part 'rewards_creation_state.dart';

@injectable
class RewardsCreationBloc
    extends Bloc<RewardsCreationEvent, RewardsCreationState> {
  RewardsCreationBloc() : super(RewardsCreationState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_AddedReward>(_onAddedReward);
    on<_RemovedReward>(_onRemovedReward);
  }

  void _onInitialized(_Initialized event, Emitter emit) => emit(
        event.rewardSetOption.fold(
          () => state,
          (_rewardSet) => state.copyWith(
            rewardsCreated: _rewardSet.getOrCrash(),
          ),
        ),
      );

  void _onRemovedReward(_RemovedReward event, Emitter emit) => emit(
        state.copyWith(
          rewardsCreated: state.rewardsCreated
              .minusElement(
                event.reward,
              )
              .toSet(),
        ),
      );

  void _onAddedReward(_AddedReward event, Emitter emit) {
    if (state.rewardsCreated.size < RewardSet.maxLength) {
      emit(
        state.copyWith(
          rewardsCreated:
              state.rewardsCreated.plusElement(event.reward).toSet(),
        ),
      );
    }
  }
}
