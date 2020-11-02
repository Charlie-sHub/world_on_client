import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/use_case/watch_search_users_by_name.dart' as search_users_by_name;
import 'package:worldon/domain/search/use_case/watch_search_users_by_username.dart' as search_users_by_username;
import 'package:worldon/injection.dart';

part 'search_users_by_name_watcher_bloc.freezed.dart';
part 'search_users_by_name_watcher_event.dart';
part 'search_users_by_name_watcher_state.dart';

@injectable
class SearchUsersByNameWatcherBloc extends Bloc<SearchUsersByNameWatcherEvent, SearchUsersByNameWatcherState> {
  SearchUsersByNameWatcherBloc() : super(const SearchUsersByNameWatcherState.initial());
  StreamSubscription<Either<Failure, KtList<User>>> _usersSearchStreamSubscription;

  @override
  Stream<SearchUsersByNameWatcherState> mapEventToState(SearchUsersByNameWatcherEvent event) async* {
    yield* event.map(
      watchUsersFoundByNameStarted: _onWatchUsersFoundByNameStarted,
      watchUsersFoundByUsernameStarted: _onWatchUsersFoundByUsernameStarted,
      searchResultsReceived: _onSearchResultsReceived,
    );
  }

  Stream<SearchUsersByNameWatcherState> _onSearchResultsReceived(_SearchResultsReceived event) async* {
    yield event.failureOrUsers.fold(
      (failure) => SearchUsersByNameWatcherState.searchFailure(failure),
      (usersFound) => SearchUsersByNameWatcherState.searchSuccess(usersFound),
    );
  }

  Stream<SearchUsersByNameWatcherState> _onWatchUsersFoundByUsernameStarted(_WatchUsersFoundByUsernameStarted event) async* {
    yield const SearchUsersByNameWatcherState.searchInProgress();
    await _usersSearchStreamSubscription?.cancel();
    _usersSearchStreamSubscription = getIt<search_users_by_username.WatchSearchUsersByUsername>()(
      search_users_by_username.Params(username: event.username),
    ).listen(
      (failureOrUsers) => add(SearchUsersByNameWatcherEvent.searchResultsReceived(failureOrUsers)),
    );
  }

  Stream<SearchUsersByNameWatcherState> _onWatchUsersFoundByNameStarted(_WatchUsersFoundByNameStarted event) async* {
    yield const SearchUsersByNameWatcherState.searchInProgress();
    await _usersSearchStreamSubscription?.cancel();
    _usersSearchStreamSubscription = getIt<search_users_by_name.WatchSearchUsersByName>()(
      search_users_by_name.Params(name: event.name),
    ).listen(
      (failureOrUsers) => add(SearchUsersByNameWatcherEvent.searchResultsReceived(failureOrUsers)),
    );
  }

  @override
  Future<void> close() async {
    await _usersSearchStreamSubscription?.cancel();
    return super.close();
  }
}
