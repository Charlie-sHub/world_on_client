import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/collection.dart';
import 'package:worldon/application/experience_management/rewards_creation/rewards_creation_bloc.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_reward.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  final _reward = getValidReward();
  final _reward2 = _reward.copyWith(id: UniqueId());
  final _reward3 = _reward.copyWith(id: UniqueId());
  final _reward4 = _reward.copyWith(id: UniqueId());
  final _reward5 = _reward.copyWith(id: UniqueId());
  final _reward6 = _reward.copyWith(id: UniqueId());
  final _rewardSet = KtSet.of(_reward);
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<RewardsCreationBloc>(),
    expect: [],
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the added reward",
    build: () => getIt<RewardsCreationBloc>(),
    act: (bloc) async => bloc.add(RewardsCreationEvent.addedReward(_reward)),
    expect: [RewardsCreationState.initial().copyWith(rewardsCreated: _rewardSet)],
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the added and then removed reward",
    build: () => getIt<RewardsCreationBloc>(),
    act: (bloc) async {
      bloc.add(RewardsCreationEvent.addedReward(_reward));
      bloc.add(RewardsCreationEvent.removedReward(_reward));
    },
    expect: [
      RewardsCreationState.initial().copyWith(rewardsCreated: _rewardSet),
      RewardsCreationState.initial(),
    ],
  );
  blocTest(
    "${"${TestDescription.shouldEmitUpdated} with the added rewards until it reaches "}${RewardSet.maxLength}",
    build: () => getIt<RewardsCreationBloc>(),
    act: (bloc) async {
      bloc.add(RewardsCreationEvent.addedReward(_reward));
      bloc.add(RewardsCreationEvent.addedReward(_reward2));
      bloc.add(RewardsCreationEvent.addedReward(_reward3));
      bloc.add(RewardsCreationEvent.addedReward(_reward4));
      bloc.add(RewardsCreationEvent.addedReward(_reward5));
      bloc.add(RewardsCreationEvent.addedReward(_reward6));
    },
    expect: [
      RewardsCreationState.initial().copyWith(rewardsCreated: _rewardSet),
      RewardsCreationState.initial().copyWith(
        rewardsCreated: KtSet.of(
          _reward,
          _reward2,
        ),
      ),
      RewardsCreationState.initial().copyWith(
        rewardsCreated: KtSet.of(
          _reward,
          _reward2,
          _reward3,
        ),
      ),
      RewardsCreationState.initial().copyWith(
        rewardsCreated: KtSet.of(
          _reward,
          _reward2,
          _reward3,
          _reward4,
        ),
      ),
      RewardsCreationState.initial().copyWith(
        rewardsCreated: KtSet.of(
          _reward,
          _reward2,
          _reward3,
          _reward4,
          _reward5,
        ),
      ),
    ],
  );
}
