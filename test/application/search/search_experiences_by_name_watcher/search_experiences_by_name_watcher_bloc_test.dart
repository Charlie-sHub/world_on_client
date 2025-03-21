import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/search/search_experiences_by_name_watcher/search_experiences_by_name_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/use_case/watch_search_experiences_by_name.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchSearchExperiencesByName searchExperiencesByName;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      searchExperiencesByName = getIt<WatchSearchExperiencesByName>();
    },
  );
  final name = SearchTerm("Test");
  final experiencesFound = KtList.of(Experience.empty());
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<SearchExperiencesByNameWatcherBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(searchExperiencesByName.call(any)).thenAnswer((_) => createStream(right(experiencesFound)));
      return getIt<SearchExperiencesByNameWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(SearchExperiencesByNameWatcherEvent.watchExperiencesFoundByNameStarted(name));
      bloc.add(SearchExperiencesByNameWatcherEvent.searchResultsReceived(right(experiencesFound)));
    },
    verify: (_) async {
      verify(searchExperiencesByName.call(any));
      verifyNoMoreInteractions(searchExperiencesByName);
    },
    expect: [
      const SearchExperiencesByNameWatcherState.searchInProgress(),
      SearchExperiencesByNameWatcherState.searchSuccess(experiencesFound),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () {
      when(searchExperiencesByName.call(any)).thenAnswer((_) => createStream(left(failure)));
      return getIt<SearchExperiencesByNameWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(SearchExperiencesByNameWatcherEvent.watchExperiencesFoundByNameStarted(name));
      bloc.add(SearchExperiencesByNameWatcherEvent.searchResultsReceived(left(failure)));
    },
    verify: (_) async {
      verify(searchExperiencesByName.call(any));
      verifyNoMoreInteractions(searchExperiencesByName);
    },
    expect: [
      const SearchExperiencesByNameWatcherState.searchInProgress(),
      const SearchExperiencesByNameWatcherState.searchFailure(failure),
    ],
  );
}
