part of 'comment_watcher_bloc.dart';

@freezed
abstract class CommentWatcherEvent with _$CommentWatcherEvent {
  const factory CommentWatcherEvent.watchExperienceCommentsStarted(UniqueId experienceId) = _WatchExperienceCommentsStarted;

  const factory CommentWatcherEvent.resultsReceived(Either<Failure, KtList<Comment>> failureOrComments) = _ResultsReceived;
}
