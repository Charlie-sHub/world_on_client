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
import 'package:worldon/domain/search/use_case/search_experiences_by_tags.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  SearchExperiencesByTags searchExperiencesByTags;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      searchExperiencesByTags = getIt<SearchExperiencesByTags>();
    },
  );
  final tags = {Tag.empty()};
  final experiencesFound = KtSet.of(Experience.empty());
  final emptyTagSet = <Tag>{};
  final valueFailure = ValueFailure.emptySet(failedValue: KtSet<Tag>.empty());
  const serverFailure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<SearchExperiencesByTagsBloc>(),
    skip: 0,
    expect: [const SearchExperiencesByTagsState.initial()],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () async {
      when(searchExperiencesByTags.call(any)).thenAnswer((_) => createStream(right(experiencesFound)));
      return getIt<SearchExperiencesByTagsBloc>();
    },
    act: (bloc) async => bloc.add(SearchExperiencesByTagsEvent.submitted(tags)),
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
        build: () async {
          when(searchExperiencesByTags.call(any)).thenAnswer((_) => createStream(left(serverFailure)));
          return getIt<SearchExperiencesByTagsBloc>();
        },
        act: (bloc) async => bloc.add(SearchExperiencesByTagsEvent.submitted(tags)),
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
        build: () async => getIt<SearchExperiencesByTagsBloc>(),
        act: (bloc) async => bloc.add(SearchExperiencesByTagsEvent.submitted(emptyTagSet)),
        verify: (_) async => verifyNoMoreInteractions(searchExperiencesByTags),
        expect: [
          const SearchExperiencesByTagsState.searchInProgress(),
          SearchExperiencesByTagsState.valueFailure(valueFailure),
        ],
      );
    },
  );
}
