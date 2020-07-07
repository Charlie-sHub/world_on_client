import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';

part 'search_by_name_form_event.dart';

part 'search_by_name_form_state.dart';

part 'search_by_name_form_bloc.freezed.dart';

@injectable
class SearchByNameFormBloc extends Bloc<SearchByNameFormEvent, SearchByNameFormState> {
  SearchByNameFormBloc() : super(SearchByNameFormState.initial());

  @override
  Stream<SearchByNameFormState> mapEventToState(SearchByNameFormEvent event) async* {
    yield* event.map(
      searchTermChanged: onSearchTermChanged,
      submitted: onSubmitted,
    );
  }

  Stream<SearchByNameFormState> onSubmitted(_Submitted event) async* {
    yield state.searchTerm.value.fold(
      (failure) => state.copyWith(
        showErrorMessages: true,
        failureOrSuccessOption: some(failure),
      ),
      (_) => state.copyWith(
        isSubmitting: true,
        showErrorMessages: true,
      ),
    );
  }

  Stream<SearchByNameFormState> onSearchTermChanged(_SearchTermChanged event) async* {
    yield state.copyWith(
      searchTerm: SearchTerm(event.searchTermString),
      isSubmitting: false,
      failureOrSuccessOption: none(),
    );
  }
}
