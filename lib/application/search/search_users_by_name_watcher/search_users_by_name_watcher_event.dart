part of 'search_users_by_name_watcher_bloc.dart';

@freezed
class SearchUsersByNameWatcherEvent with _$SearchUsersByNameWatcherEvent {
  const factory SearchUsersByNameWatcherEvent.watchUsersFoundByNameStarted(SearchTerm name) = _WatchUsersFoundByNameStarted;

  const factory SearchUsersByNameWatcherEvent.watchUsersFoundByUsernameStarted(SearchTerm username) = _WatchUsersFoundByUsernameStarted;

  const factory SearchUsersByNameWatcherEvent.searchResultsReceived(Either<Failure, KtList<User>> failureOrUsers) = _SearchResultsReceived;
}
