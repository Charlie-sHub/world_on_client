part of 'watch_current_user_bloc.dart';

@freezed
class WatchCurrentUserEvent with _$WatchCurrentUserEvent {
  const factory WatchCurrentUserEvent.watchCurrentUserStarted() = _WatchCurrentUserStarted;

  const factory WatchCurrentUserEvent.resultReceived(Either<Failure, User> failureOrUser) =
      _ResultReceived;
}
