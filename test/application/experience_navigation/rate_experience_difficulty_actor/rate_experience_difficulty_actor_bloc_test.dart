import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/experience_navigation/rate_experience_difficulty_actor/rate_experience_difficulty_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/rate_difficulty.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  RateDifficulty rateDifficulty;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      rateDifficulty = getIt<RateDifficulty>();
    },
  );
  const difficultyRating = 5;
  final experience = getValidExperience();
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<RateExperienceDifficultyActorBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(rateDifficulty.call(any)).thenAnswer((_) async => right(unit));
      return getIt<RateExperienceDifficultyActorBloc>();
    },
    act: (bloc) async => bloc.add(
      RateExperienceDifficultyActorEvent.difficultyRated(
        experience: experience,
        difficultyRating: difficultyRating,
      ),
    ),
    verify: (_) async => verify(rateDifficulty.call(any)),
    expect: [
      const RateExperienceDifficultyActorState.actionInProgress(),
      const RateExperienceDifficultyActorState.ratingSuccess(),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () {
      when(rateDifficulty.call(any)).thenAnswer((_) async => left(failure));
      return getIt<RateExperienceDifficultyActorBloc>();
    },
    act: (bloc) async => bloc.add(
      RateExperienceDifficultyActorEvent.difficultyRated(
        experience: experience,
        difficultyRating: difficultyRating,
      ),
    ),
    verify: (_) async => verify(rateDifficulty.call(any)),
    expect: [
      const RateExperienceDifficultyActorState.actionInProgress(),
      const RateExperienceDifficultyActorState.ratingFailure(failure),
    ],
  );
}
