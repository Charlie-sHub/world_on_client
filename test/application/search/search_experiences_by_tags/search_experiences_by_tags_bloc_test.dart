import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/search/search_experiences_by_tags/search_experiences_by_tags_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/search/use_case/watch_search_experiences_by_tags.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchSearchExperiencesByTags searchExperiencesByTags;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      searchExperiencesByTags = getIt<WatchSearchExperiencesByTags>();
    },
  );
  final tags = {Tag.empty()};
  final experiencesFound = KtList.of(Experience.empty());
  final emptyTagSet = <Tag>{};
  const valueFailure = ValueFailure.emptySet(failedValue: KtSet<Tag>.empty());
  const serverFailure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<SearchExperiencesByTagsBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(searchExperiencesByTags.call(any)).thenAnswer((_) => createStream(right(experiencesFound)));
      return getIt<SearchExperiencesByTagsBloc>();
    },
    act: (bloc) async {
      bloc.add(SearchExperiencesByTagsEvent.submitted(tags));
      bloc.add(SearchExperiencesByTagsEvent.resultsReceived(right(experiencesFound)));
    },
    verify: (_) async {
      verify(searchExperiencesByTags.call(any));
      verifyNoMoreInteractions(searchExperiencesByTags);
    },
    expect: [
      const SearchExperiencesByTagsState.searchInProgress(),
      SearchExperiencesByTagsState.searchSuccess(experiencesFound),
    ],
  );
  group(
    TestDescription.groupOnFailure,
    () {
      blocTest(
        "${TestDescription.shouldEmitFailure} with serverFailure",
        build: () {
          when(searchExperiencesByTags.call(any)).thenAnswer((_) => createStream(left(serverFailure)));
          return getIt<SearchExperiencesByTagsBloc>();
        },
        act: (bloc) async {
          bloc.add(SearchExperiencesByTagsEvent.submitted(tags));
          bloc.add(SearchExperiencesByTagsEvent.resultsReceived(left(serverFailure)));
        },
        verify: (_) async {
          verify(searchExperiencesByTags.call(any));
          verifyNoMoreInteractions(searchExperiencesByTags);
        },
        expect: [
          const SearchExperiencesByTagsState.searchInProgress(),
          const SearchExperiencesByTagsState.searchFailure(serverFailure),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} with valueFailure",
        build: () => getIt<SearchExperiencesByTagsBloc>(),
        act: (bloc) async => bloc.add(SearchExperiencesByTagsEvent.submitted(emptyTagSet)),
        verify: (_) async => verifyNoMoreInteractions(searchExperiencesByTags),
        expect: [
          const SearchExperiencesByTagsState.searchInProgress(),
          const SearchExperiencesByTagsState.valueFailure(valueFailure),
        ],
      );
    },
  );
}
