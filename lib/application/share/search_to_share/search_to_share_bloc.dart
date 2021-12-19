import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/share/use_case/search_to_share.dart';
import 'package:worldon/injection.dart';

part 'search_to_share_bloc.freezed.dart';
part 'search_to_share_event.dart';
part 'search_to_share_state.dart';

@injectable
class SearchToShareBloc extends Bloc<SearchToShareEvent, SearchToShareState> {
  SearchToShareBloc() : super(SearchToShareState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_SearchTermChanged>(_onSearchTermChanged);
    on<_Submitted>(_onSubmitted);
  }

  void _onSubmitted(_Submitted event, Emitter emit) {
    if (state.searchTerm.isValid()) {
      final _searchString = state.searchTerm.getOrCrash();
      final _filteredUserList = state.allUsers.iter
          .where(
            (_user) =>
                _user.name.getOrCrash().toLowerCase().contains(
                      _searchString,
                    ) ||
                _user.username.getOrCrash().toLowerCase().contains(
                      _searchString,
                    ),
          )
          .toImmutableList();
      emit(
        state.copyWith(
          searchedUsers: _filteredUserList,
          failureOrSuccessOption: none(),
        ),
      );
    } else {
      emit(
        state.copyWith(
          searchedUsers: state.allUsers,
          failureOrSuccessOption: none(),
        ),
      );
    }
  }

  void _onSearchTermChanged(_SearchTermChanged event, Emitter emit) {
    final _oldTerm = state.searchTerm.value.fold(
      (_) => "",
      id,
    );
    final _newTerm = event.searchTermString;
    if (_newTerm != _oldTerm) {
      emit(
        state.copyWith(
          searchTerm: SearchTerm(_newTerm),
          failureOrSuccessOption: none(),
        ),
      );
    }
    add(
      const SearchToShareEvent.submitted(),
    );
  }

  FutureOr<void> _onInitialized(_Initialized event, Emitter emit) async {
    final _failureOrResults = await getIt<SearchToShare>()(
      getIt<NoParams>(),
    );
    emit(
      _failureOrResults.fold(
        (_failure) => state.copyWith(
          failureOrSuccessOption: some(_failure),
        ),
        (_users) => state.copyWith(
          allUsers: _users,
          searchedUsers: _users,
        ),
      ),
    );
  }
}
