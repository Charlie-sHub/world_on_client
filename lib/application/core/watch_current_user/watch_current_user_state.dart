part of 'watch_current_user_bloc.dart';

@freezed
class WatchCurrentUserState with _$WatchCurrentUserState {
  const factory WatchCurrentUserState.initial() = _Initial;

  const factory WatchCurrentUserState.loadSuccess(User user) = _LoadSuccess;

  const factory WatchCurrentUserState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
