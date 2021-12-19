import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/use_case/watch_search_users_by_name.dart'
    as search_users_by_name;
import 'package:worldon/injection.dart';

part 'search_users_by_name_watcher_bloc.freezed.dart';
part 'search_users_by_name_watcher_event.dart';
part 'search_users_by_name_watcher_state.dart';

@injectable
class SearchUsersByNameWatcherBloc
    extends Bloc<SearchUsersByNameWatcherEvent, SearchUsersByNameWatcherState> {
  SearchUsersByNameWatcherBloc()
      : super(const SearchUsersByNameWatcherState.initial()) {
    on<_WatchUsersFoundByNameStarted>(_onWatchUsersFoundByNameStarted);
    on<_SearchResultsReceived>(_onSearchResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<User>>>?
      _usersSearchStreamSubscription;

  void _onSearchResultsReceived(_SearchResultsReceived event, Emitter emit) {
    emit(
      event.failureOrUsers.fold(
        (failure) => SearchUsersByNameWatcherState.searchFailure(failure),
        (usersFound) => SearchUsersByNameWatcherState.searchSuccess(usersFound),
      ),
    );
  }

  FutureOr<void> _onWatchUsersFoundByNameStarted(
    _WatchUsersFoundByNameStarted event,
    Emitter emit,
  ) async {
    emit(const SearchUsersByNameWatcherState.searchInProgress());
    await _usersSearchStreamSubscription?.cancel();
    _usersSearchStreamSubscription =
        getIt<search_users_by_name.WatchSearchUsersByName>()(
      search_users_by_name.Params(name: event.name),
    ).listen(
      (failureOrUsers) => add(
        SearchUsersByNameWatcherEvent.searchResultsReceived(failureOrUsers),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _usersSearchStreamSubscription?.cancel();
    return super.close();
  }
}
