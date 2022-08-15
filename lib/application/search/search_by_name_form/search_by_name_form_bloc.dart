import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';

part 'search_by_name_form_bloc.freezed.dart';
part 'search_by_name_form_event.dart';
part 'search_by_name_form_state.dart';

/// This BLoC is to be used as the "father" of the other searches by name [Bloc]s
/// When the state submits the subordinate [Bloc]s will search
/// The other [Bloc]s will "control" different tabs
@injectable
class SearchByNameFormBloc
    extends Bloc<SearchByNameFormEvent, SearchByNameFormState> {
  SearchByNameFormBloc() : super(SearchByNameFormState.initial()) {
    on<_SearchTermChanged>(_onSearchTermChanged);
    on<_Submitted>(_onSubmitted);
  }

  void _onSubmitted(_, Emitter emit) {
    emit(
      state.searchTerm.value.fold(
        (failure) => state.copyWith(
          showErrorMessages: true,
          failureOrSuccessOption: some(failure),
        ),
        (_) => state.copyWith(
          isSubmitting: true,
          showErrorMessages: true,
        ),
      ),
    );
  }

  void _onSearchTermChanged(_SearchTermChanged event, Emitter emit) {
    final oldSearchTerm = state.searchTerm.toString();
    if (event.searchTermString != oldSearchTerm) {
      emit(
        state.copyWith(
          searchTerm: SearchTerm(event.searchTermString),
          isSubmitting: false,
          failureOrSuccessOption: none(),
        ),
      );
      // Searching for every change of the term is simply too costly with Algolia
      // Maybe it can be reimplemented in the future
      // add(const SearchByNameFormEvent.submitted());
    }
  }
}
