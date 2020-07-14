part of 'search_users_by_name_watcher_bloc.dart';

@freezed
abstract class SearchUsersByNameWatcherState with _$SearchUsersByNameWatcherState {
  const factory SearchUsersByNameWatcherState.initial() = _Initial;

  const factory SearchUsersByNameWatcherState.searchInProgress() = _SearchInPorgress;

  const factory SearchUsersByNameWatcherState.searchSuccess(KtSet<User> usersFound) = _SearchSuccess;

  const factory SearchUsersByNameWatcherState.searchFailure(Failure<dynamic> failure) = _SearchFailure;
}
