import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/search/search_experiences_by_difficulty/search_experiences_by_difficulty_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/search/use_case/search_experiences_by_difficulty.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  SearchExperiencesByDifficulty searchExperiencesByDifficulty;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      searchExperiencesByDifficulty = getIt<SearchExperiencesByDifficulty>();
    },
  );
  final experiencesFound = KtList.of(Experience.empty());
  const validDifficulty = 5;
  const invalidDifficulty = 50;
  const valueFailure = ValueFailure<int>.integerOutOfBounds(failedValue: invalidDifficulty);
  const serverFailure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<SearchExperiencesByDifficultyBloc>(),
    skip: 0,
    expect: [const SearchExperiencesByDifficultyState.initial()],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () async {
      when(searchExperiencesByDifficulty.call(any)).thenAnswer((_) => createStream(right(experiencesFound)));
      return getIt<SearchExperiencesByDifficultyBloc>();
    },
    act: (bloc) async => bloc.add(const SearchExperiencesByDifficultyEvent.submitted(validDifficulty)),
    verify: (_) async {
      verify(searchExperiencesByDifficulty.call(any));
      verifyNoMoreInteractions(searchExperiencesByDifficulty);
    },
    expect: [
      const SearchExperiencesByDifficultyState.searchInProgress(),
      SearchExperiencesByDifficultyState.searchSuccess(experiencesFound),
    ],
  );
  group(
    TestDescription.groupOnFailure,
    () {
      blocTest(
        "${TestDescription.shouldEmitFailure} with serverFailure",
        build: () async {
          when(searchExperiencesByDifficulty.call(any)).thenAnswer((_) => createStream(left(serverFailure)));
          return getIt<SearchExperiencesByDifficultyBloc>();
        },
        act: (bloc) async => bloc.add(const SearchExperiencesByDifficultyEvent.submitted(validDifficulty)),
        verify: (_) async {
          verify(searchExperiencesByDifficulty.call(any));
          verifyNoMoreInteractions(searchExperiencesByDifficulty);
        },
        expect: [
          const SearchExperiencesByDifficultyState.searchInProgress(),
          const SearchExperiencesByDifficultyState.searchFailure(serverFailure),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} with valueFailure",
        build: () async => getIt<SearchExperiencesByDifficultyBloc>(),
        act: (bloc) async => bloc.add(const SearchExperiencesByDifficultyEvent.submitted(invalidDifficulty)),
        verify: (_) async => verifyNoMoreInteractions(searchExperiencesByDifficulty),
        expect: [
          const SearchExperiencesByDifficultyState.searchInProgress(),
          const SearchExperiencesByDifficultyState.valueFailure(valueFailure),
        ],
      );
    },
  );
}
