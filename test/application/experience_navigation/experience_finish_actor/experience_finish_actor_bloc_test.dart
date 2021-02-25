import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/experience_navigation/experience_finish_actor/experience_finish_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/finish_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/reward_user.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  RewardUser rewardUser;
  FinishExperience finishExperience;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      rewardUser = getIt<RewardUser>();
      finishExperience = getIt<FinishExperience>();
    },
  );
  final experience = getValidExperience();
  const _experiencePointsToAward = 100;
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ExperienceFinishActorBloc>(),
    expect: [],
  );
  blocTest(
    "Should emit finishSuccess and rewardSuccess",
    build: () {
      when(finishExperience.call(any)).thenAnswer((_) async => right(unit));
      // when(rewardUser.call(any)).thenAnswer((_) async => right(_experiencePointsToAward));
      return getIt<ExperienceFinishActorBloc>();
    },
    act: (bloc) async => bloc.add(ExperienceFinishActorEvent.finishedExperience(experience)),
    verify: (_) async {
      verify(rewardUser.call(any));
      verify(finishExperience.call(any));
    },
    expect: [
      const ExperienceFinishActorState.actionInProgress(),
      const ExperienceFinishActorState.finishSuccess(_experiencePointsToAward),
    ],
  );
  blocTest(
    "Should emit finishFailure and rewardSuccess",
    build: () {
      when(finishExperience.call(any)).thenAnswer((_) async => left(failure));
      // when(rewardUser.call(any)).thenAnswer((_) async => right(_experiencePointsToAward));
      return getIt<ExperienceFinishActorBloc>();
    },
    act: (bloc) async => bloc.add(ExperienceFinishActorEvent.finishedExperience(experience)),
    verify: (_) async {
      verify(rewardUser.call(any));
      verify(finishExperience.call(any));
    },
    expect: [
      const ExperienceFinishActorState.actionInProgress(),
      const ExperienceFinishActorState.finishFailure(failure),
    ],
  );
  blocTest(
    "Should emit finishSuccess and rewardFailure",
    build: () {
      when(finishExperience.call(any)).thenAnswer((_) async => right(unit));
      when(rewardUser.call(any)).thenAnswer((_) async => left(failure));

      return getIt<ExperienceFinishActorBloc>();
    },
    act: (bloc) async => bloc.add(ExperienceFinishActorEvent.finishedExperience(experience)),
    verify: (_) async {
      verify(rewardUser.call(any));
      verify(finishExperience.call(any));
    },
    expect: [
      const ExperienceFinishActorState.actionInProgress(),
      const ExperienceFinishActorState.finishFailure(failure),
    ],
  );
  blocTest(
    "Should emit finishFailure and rewardFailure",
    build: () {
      when(finishExperience.call(any)).thenAnswer((_) async => left(failure));
      when(rewardUser.call(any)).thenAnswer((_) async => left(failure));

      return getIt<ExperienceFinishActorBloc>();
    },
    act: (bloc) async => bloc.add(ExperienceFinishActorEvent.finishedExperience(experience)),
    verify: (_) async {
      verify(rewardUser.call(any));
      verify(finishExperience.call(any));
    },
    expect: [
      const ExperienceFinishActorState.actionInProgress(),
      const ExperienceFinishActorState.finishFailure(failure),
    ],
  );
}
