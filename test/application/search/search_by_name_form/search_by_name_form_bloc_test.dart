import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import '../../../test_descriptions.dart';

void main() {
  const validSearchTerm = "Test";
  const invalidSearchTerm = "";
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<SearchByNameFormBloc>(),
    skip: 0,
    expect: [SearchByNameFormState.initial()],
  );
  const failure = ValueFailure.emptyString(failedValue: invalidSearchTerm);
  group(
    "Changing the search term",
    () {
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the validSearchTerm",
        build: () async => getIt<SearchByNameFormBloc>(),
        act: (bloc) async => bloc.add(const SearchByNameFormEvent.searchTermChanged(validSearchTerm)),
        expect: [
          SearchByNameFormState.initial().copyWith(
            searchTerm: SearchTerm(validSearchTerm),
          ),
        ],
      );
      blocTest(
        "Should not update with the invalidSearchTerm",
        build: () async => getIt<SearchByNameFormBloc>(),
        act: (bloc) async => bloc.add(const SearchByNameFormEvent.searchTermChanged(invalidSearchTerm)),
        expect: [],
      );
    },
  );
  group(
    "Testing submitting",
    () {
      blocTest(
        "${TestDescription.shouldEmitSuccess} with the validSearchTerm",
        build: () async => getIt<SearchByNameFormBloc>(),
        act: (bloc) async {
          bloc.add(const SearchByNameFormEvent.searchTermChanged(validSearchTerm));
          bloc.add(const SearchByNameFormEvent.submitted());
        },
        expect: [
          SearchByNameFormState.initial().copyWith(
            searchTerm: SearchTerm(validSearchTerm),
          ),
          SearchByNameFormState.initial().copyWith(
            searchTerm: SearchTerm(validSearchTerm),
            isSubmitting: true,
            showErrorMessages: true,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} with the validSearchTerm but reset when the term is changed again",
        build: () async => getIt<SearchByNameFormBloc>(),
        act: (bloc) async {
          bloc.add(const SearchByNameFormEvent.searchTermChanged(validSearchTerm));
          bloc.add(const SearchByNameFormEvent.submitted());
          bloc.add(const SearchByNameFormEvent.searchTermChanged(validSearchTerm));
        },
        expect: [
          SearchByNameFormState.initial().copyWith(
            searchTerm: SearchTerm(validSearchTerm),
          ),
          SearchByNameFormState.initial().copyWith(
            searchTerm: SearchTerm(validSearchTerm),
            isSubmitting: true,
            showErrorMessages: true,
          ),
          SearchByNameFormState.initial().copyWith(
            searchTerm: SearchTerm(validSearchTerm),
            showErrorMessages: true,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} with the invalidSearchTerm",
        build: () async => getIt<SearchByNameFormBloc>(),
        act: (bloc) async {
          bloc.add(const SearchByNameFormEvent.searchTermChanged(invalidSearchTerm));
          bloc.add(const SearchByNameFormEvent.submitted());
        },
        expect: [
          SearchByNameFormState.initial().copyWith(
            searchTerm: SearchTerm(invalidSearchTerm),
            showErrorMessages: true,
            failureOrSuccessOption: some(failure),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} with the invalidSearchTerm but reset when the term is changed again",
        build: () async => getIt<SearchByNameFormBloc>(),
        act: (bloc) async {
          bloc.add(const SearchByNameFormEvent.searchTermChanged(invalidSearchTerm));
          bloc.add(const SearchByNameFormEvent.submitted());
          bloc.add(const SearchByNameFormEvent.searchTermChanged(invalidSearchTerm));
        },
        expect: [
          SearchByNameFormState.initial().copyWith(
            searchTerm: SearchTerm(invalidSearchTerm),
            showErrorMessages: true,
            failureOrSuccessOption: some(failure),
          ),
          SearchByNameFormState.initial().copyWith(
            searchTerm: SearchTerm(invalidSearchTerm),
            showErrorMessages: true,
          ),
        ],
      );
    },
  );
}
