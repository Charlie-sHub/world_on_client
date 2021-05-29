import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/use_case/search_to_share.dart';
import 'package:worldon/injection.dart';

part 'search_to_share_bloc.freezed.dart';

part 'search_to_share_event.dart';

part 'search_to_share_state.dart';

@injectable
class SearchToShareBloc extends Bloc<SearchToShareEvent, SearchToShareState> {
  SearchToShareBloc() : super(SearchToShareState.initial());

  @override
  Stream<SearchToShareState> mapEventToState(SearchToShareEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      searchTermChanged: _onSearchTermChanged,
    );
  }

  Stream<SearchToShareState> _onSearchTermChanged(_SearchTermChanged event) async* {
    final _oldSearchTerm = state.searchTerm.toString();
    if (event.searchTermString != _oldSearchTerm) {
      yield state.copyWith(
        searchTerm: SearchTerm(event.searchTermString),
        failureOrSuccessOption: none(),
      );
    }
    final _failureOrResults = await getIt<SearchToShare>()(
      Params(searchTerm: state.searchTerm),
    );
    yield _failureOrResults.fold(
      (_failure) => state.copyWith(
        failureOrSuccessOption: some(_failure),
      ),
      (_users) => state.copyWith(
        users: _users,
      ),
    );
  }

  Stream<SearchToShareState> _onInitialized(_Initialized event) async* {
    final _failureOrResults = await getIt<SearchToShare>()(
      Params(searchTerm: state.searchTerm),
    );
    yield _failureOrResults.fold(
      (_failure) => state.copyWith(
        failureOrSuccessOption: some(_failure),
      ),
      (_users) => state.copyWith(
        users: _users,
      ),
    );
  }
}
