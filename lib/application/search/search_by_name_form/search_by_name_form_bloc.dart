import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';

part 'search_by_name_form_bloc.freezed.dart';
part 'search_by_name_form_event.dart';
part 'search_by_name_form_state.dart';

/// This BLoC is to be used as the "father" of the other searches by name [Bloc]s
/// When the state submits the subordinate [Bloc]s will search
/// The other [Bloc]s will "control" different tabs
@injectable
class SearchByNameFormBloc extends Bloc<SearchByNameFormEvent, SearchByNameFormState> {
  SearchByNameFormBloc() : super(SearchByNameFormState.initial());

  @override
  Stream<SearchByNameFormState> mapEventToState(SearchByNameFormEvent event) async* {
    yield* event.map(
      searchTermChanged: _onSearchTermChanged,
      submitted: _onSubmitted,
    );
  }

  Stream<SearchByNameFormState> _onSubmitted(_) async* {
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

  Stream<SearchByNameFormState> _onSearchTermChanged(_SearchTermChanged event) async* {
    yield state.copyWith(
      searchTerm: SearchTerm(event.searchTermString),
      isSubmitting: false,
      failureOrSuccessOption: none(),
    );
  }
}
