import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/use_case/search_tags_by_name.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  SearchTagsByName searchTagsByName;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      searchTagsByName = getIt<SearchTagsByName>();
    },
  );
  final name = SearchTerm("Test");
  final tagsFound = {Tag.empty()};
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<SearchTagsByNameWatcherBloc>(),
    skip: 0,
    expect: [const SearchTagsByNameWatcherState.initial()],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () async {
      when(searchTagsByName.call(any)).thenAnswer((_) => createStream(right(tagsFound)));
      return getIt<SearchTagsByNameWatcherBloc>();
    },
    act: (bloc) async => bloc.add(SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(name)),
    verify: (_) async {
      verify(searchTagsByName.call(any));
      verifyNoMoreInteractions(searchTagsByName);
    },
    expect: [
      const SearchTagsByNameWatcherState.searchInProgress(),
      SearchTagsByNameWatcherState.searchSuccess(tagsFound),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () async {
      when(searchTagsByName.call(any)).thenAnswer((_) => createStream(left(failure)));
      return getIt<SearchTagsByNameWatcherBloc>();
    },
    act: (bloc) async => bloc.add(SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(name)),
    verify: (_) async {
      verify(searchTagsByName.call(any));
      verifyNoMoreInteractions(searchTagsByName);
    },
    expect: [
      const SearchTagsByNameWatcherState.searchInProgress(),
      const SearchTagsByNameWatcherState.searchFailure(failure),
    ],
  );
}
