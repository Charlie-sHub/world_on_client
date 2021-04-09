import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';

part 'rewards_creation_bloc.freezed.dart';
part 'rewards_creation_event.dart';
part 'rewards_creation_state.dart';

@injectable
class RewardsCreationBloc extends Bloc<RewardsCreationEvent, RewardsCreationState> {
  RewardsCreationBloc() : super(RewardsCreationState.initial());

  @override
  Stream<RewardsCreationState> mapEventToState(RewardsCreationEvent event) async* {
    yield* event.map(
      addedReward: _onAddedReward,
      removedReward: _onRemovedReward,
      initialized: _onInitialized,
    );
  }

  Stream<RewardsCreationState> _onInitialized(_Initialized event) async* {
    yield event.rewardSetOption.fold(
      () => state,
      (_rewardSet) => state.copyWith(
        rewardsCreated: _rewardSet.getOrCrash(),
      ),
    );
  }

  Stream<RewardsCreationState> _onRemovedReward(_RemovedReward event) async* {
    yield state.copyWith(
      rewardsCreated: state.rewardsCreated.minusElement(event.reward).toSet(),
    );
  }

  Stream<RewardsCreationState> _onAddedReward(_AddedReward event) async* {
    if (state.rewardsCreated.size < RewardSet.maxLength) {
      yield state.copyWith(
        rewardsCreated: state.rewardsCreated.plusElement(event.reward).toSet(),
      );
    }
  }
}
