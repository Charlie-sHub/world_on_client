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
      watchUsersFoundByNameStarted: onWatchUsersFoundByNameStarted,
      watchUsersFoundByUsernameStarted: onWatchUsersFoundByUsernameStarted,
      searchResultsReceived: onSearchResultsReceived,
    );
  }

  Stream<SearchUsersByNameWatcherState> onSearchResultsReceived(_SearchResultsReceived event) async* {
    yield event.failureOrUsers.fold(
      (failure) => SearchUsersByNameWatcherState.searchFailure(failure),
      (usersFound) => SearchUsersByNameWatcherState.searchSuccess(usersFound),
    );
  }

  Stream<SearchUsersByNameWatcherState> onWatchUsersFoundByUsernameStarted(_WatchUsersFoundByUsernameStarted event) async* {
    yield const SearchUsersByNameWatcherState.searchInProgress();
    await _usersSearchStreamSubscription?.cancel();
    final _searchUsersByUsername = getIt<search_users_by_username.WatchSearchUsersByUsername>();
    _usersSearchStreamSubscription = _searchUsersByUsername(
      search_users_by_username.Params(username: event.username),
    ).listen(
      (failureOrUsers) => add(SearchUsersByNameWatcherEvent.searchResultsReceived(failureOrUsers)),
    );
  }

  Stream<SearchUsersByNameWatcherState> onWatchUsersFoundByNameStarted(_WatchUsersFoundByNameStarted event) async* {
    yield const SearchUsersByNameWatcherState.searchInProgress();
    await _usersSearchStreamSubscription?.cancel();
    final _searchUsersByName = getIt<search_users_by_name.WatchSearchUsersByName>();
    _usersSearchStreamSubscription = _searchUsersByName(
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
