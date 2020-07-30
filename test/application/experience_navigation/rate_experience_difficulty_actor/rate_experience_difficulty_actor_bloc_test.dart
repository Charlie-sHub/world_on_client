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
  const _difficultyRating = 5;
  final _experience = getValidExperience();
  const _failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<RateExperienceDifficultyActorBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () => getIt<RateExperienceDifficultyActorBloc>(),
    act: (bloc) async => bloc.add(
      const RateExperienceDifficultyActorEvent.difficultyChanged(_difficultyRating),
    ),
    expect: [
      RateExperienceDifficultyActorState.initial().copyWith(difficulty: _difficultyRating),
    ],
  );
  group(
    "Testing rating",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(rateDifficulty.call(any)).thenAnswer((_) async => right(unit));
          return getIt<RateExperienceDifficultyActorBloc>();
        },
        act: (bloc) async {
          bloc.add(const RateExperienceDifficultyActorEvent.difficultyChanged(_difficultyRating));
          bloc.add(RateExperienceDifficultyActorEvent.difficultyRated(_experience));
        },
        verify: (_) async => verify(rateDifficulty.call(any)),
        expect: [
          RateExperienceDifficultyActorState.initial().copyWith(
            difficulty: _difficultyRating,
          ),
          RateExperienceDifficultyActorState.initial().copyWith(
            difficulty: _difficultyRating,
            isSubmitting: true,
          ),
          RateExperienceDifficultyActorState.initial().copyWith(
            difficulty: _difficultyRating,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(rateDifficulty.call(any)).thenAnswer((_) async => left(_failure));
          return getIt<RateExperienceDifficultyActorBloc>();
        },
        act: (bloc) async {
          bloc.add(const RateExperienceDifficultyActorEvent.difficultyChanged(_difficultyRating));
          bloc.add(RateExperienceDifficultyActorEvent.difficultyRated(_experience));
        },
        verify: (_) async => verify(rateDifficulty.call(any)),
        expect: [
          RateExperienceDifficultyActorState.initial().copyWith(
            difficulty: _difficultyRating,
          ),
          RateExperienceDifficultyActorState.initial().copyWith(
            difficulty: _difficultyRating,
            isSubmitting: true,
          ),
          RateExperienceDifficultyActorState.initial().copyWith(
            difficulty: _difficultyRating,
            failureOrSuccessOption: some(left(_failure)),
          ),
        ],
      );
    },
  );
}
