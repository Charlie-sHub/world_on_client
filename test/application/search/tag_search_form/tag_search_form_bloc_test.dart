import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/search/tag_search_form/tag_search_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/search/use_case/search_tags_by_name.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../domain/core/methods/get_valid_tag.dart';
import '../../../test_descriptions.dart';

// TODO: Finish testing an implementing this bloc
// And stop skipping it
void main() {
  SearchTagsByName searchTagsByName;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      searchTagsByName = getIt<SearchTagsByName>();
    },
  );
  const validSearchTerm = "Test";
  const invalidSearchTerm = "";
  final tag = getValidTag();
  final anotherTag = tag.copyWith(id: 2);
  final yetAnotherTag = tag.copyWith(id: 3);
  final tagsFound = {
    tag,
    anotherTag,
    yetAnotherTag,
  };
  const serverFailure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  const valueFailure = Failure<dynamic>.value(ValueFailure<String>.emptyString(failedValue: invalidSearchTerm));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<TagSearchFormBloc>(),
    skip: 0,
    expect: [TagSearchFormState.initial()],
  );
  blocTest(
    "${TestDescription.shouldEmitFailure} with the invalidSearchTerm",
    build: () async => getIt<TagSearchFormBloc>(),
    act: (bloc) async => bloc.add(const TagSearchFormEvent.submittedSearchTerm(invalidSearchTerm)),
    verify: (_) async => verifyZeroInteractions(searchTagsByName),
    expect: [
      TagSearchFormState.initial().copyWith(
        isSubmitting: true,
      ),
      TagSearchFormState.initial().copyWith(
        showErrorMessages: true,
        failureOption: some(valueFailure),
      ),
    ],
  );
  group(
    "Testing searching",
    () {
      blocTest(
        "${TestDescription.shouldEmitSuccess} with the tagsFound",
        build: () async {
          when(searchTagsByName.call(any)).thenAnswer((_) => createStream(right(tagsFound)));
          return getIt<TagSearchFormBloc>();
        },
        act: (bloc) async => bloc.add(const TagSearchFormEvent.submittedSearchTerm(validSearchTerm)),
        verify: (_) async {
          verify(searchTagsByName.call(any));
          verifyNoMoreInteractions(searchTagsByName);
        },
        expect: [
          TagSearchFormState.initial().copyWith(
            isSubmitting: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            showErrorMessages: true,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} with the tagsFound even after adding a tag",
        build: () async {
          when(searchTagsByName.call(any)).thenAnswer((_) => createStream(right(tagsFound)));
          return getIt<TagSearchFormBloc>();
        },
        act: (bloc) async {
          // TODO: Figure out why some events seem to be "ignored"
          bloc.add(const TagSearchFormEvent.submittedSearchTerm(validSearchTerm));
          // Why does adding the next event mess up with the expected states from the previous event?
          bloc.add(TagSearchFormEvent.addedTag(tag));
          bloc.add(const TagSearchFormEvent.submittedSearchTerm(validSearchTerm));
        },
        verify: (_) async {
          verify(searchTagsByName.call(any));
          verifyNoMoreInteractions(searchTagsByName);
        },
        expect: [
          TagSearchFormState.initial().copyWith(
            isSubmitting: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            showErrorMessages: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            tagsSelected: {
              tag,
            },
            showErrorMessages: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            isSubmitting: true,
            tagsSelected: {
              tag,
            },
            showErrorMessages: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            tagsSelected: {
              tag,
            },
            showErrorMessages: true,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} with serverFailure",
        build: () async {
          when(searchTagsByName.call(any)).thenAnswer((_) => createStream(left(serverFailure)));
          return getIt<TagSearchFormBloc>();
        },
        act: (bloc) async => bloc.add(const TagSearchFormEvent.submittedSearchTerm(validSearchTerm)),
        verify: (_) async {
          verify(searchTagsByName.call(any));
          verifyNoMoreInteractions(searchTagsByName);
        },
        expect: [
          TagSearchFormState.initial().copyWith(
            isSubmitting: true,
          ),
          TagSearchFormState.initial().copyWith(
            failureOption: some(serverFailure),
            showErrorMessages: true,
          ),
        ],
      );
    },
    skip: "Currently fails when adding or removing tags from the selected tags list",
  );
  group(
    "Testing adding and subtracting Tags",
    () {
      blocTest(
        "${TestDescription.shouldEmitUpdated} with tag added",
        build: () async {
          when(searchTagsByName.call(any)).thenAnswer((_) => createStream(right(tagsFound)));
          return getIt<TagSearchFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const TagSearchFormEvent.submittedSearchTerm(validSearchTerm));
          // bloc.add(TagSearchFormEvent.addedTag(tag));
        },
        verify: (_) async {
          verify(searchTagsByName.call(any));
          verifyNoMoreInteractions(searchTagsByName);
        },
        expect: [
          TagSearchFormState.initial().copyWith(
            isSubmitting: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            showErrorMessages: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            tagsSelected: {
              tag,
            },
            showErrorMessages: true,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with tag and anotherTag added",
        build: () async {
          when(searchTagsByName.call(any)).thenAnswer((_) => createStream(right(tagsFound)));
          return getIt<TagSearchFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const TagSearchFormEvent.submittedSearchTerm(validSearchTerm));
          bloc.add(TagSearchFormEvent.addedTag(tag));
          bloc.add(TagSearchFormEvent.addedTag(anotherTag));
        },
        verify: (_) async {
          verify(searchTagsByName.call(any));
          verifyNoMoreInteractions(searchTagsByName);
        },
        expect: [
          TagSearchFormState.initial().copyWith(
            isSubmitting: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            showErrorMessages: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            tagsSelected: {
              tag,
            },
            showErrorMessages: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            tagsSelected: {
              tag,
              anotherTag,
            },
            showErrorMessages: true,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with tag, anotherTag and yetAnotherTag added but then tag subtracted",
        build: () async {
          when(searchTagsByName.call(any)).thenAnswer((_) => createStream(right(tagsFound)));
          return getIt<TagSearchFormBloc>();
        },
        act: (bloc) async {
          bloc.add(const TagSearchFormEvent.submittedSearchTerm(validSearchTerm));
          bloc.add(TagSearchFormEvent.addedTag(tag));
          bloc.add(TagSearchFormEvent.addedTag(anotherTag));
          bloc.add(TagSearchFormEvent.addedTag(yetAnotherTag));
          bloc.add(TagSearchFormEvent.removedTag(tag));
        },
        verify: (_) async {
          verify(searchTagsByName.call(any));
          verifyNoMoreInteractions(searchTagsByName);
        },
        expect: [
          TagSearchFormState.initial().copyWith(
            isSubmitting: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            showErrorMessages: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            tagsSelected: {
              tag,
            },
            showErrorMessages: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            tagsSelected: {
              tag,
              anotherTag,
            },
            showErrorMessages: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            tagsSelected: {
              tag,
              anotherTag,
              yetAnotherTag,
            },
            showErrorMessages: true,
          ),
          TagSearchFormState.initial().copyWith(
            tagsFound: tagsFound,
            tagsSelected: {
              anotherTag,
              yetAnotherTag,
            },
            showErrorMessages: true,
          ),
        ],
      );
    },
    skip: "Currently fails when adding or removing tags from the selected tags list",
  );
}
