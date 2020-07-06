part of 'comment_watcher_bloc.dart';

@freezed
abstract class CommentWatcherEvent with _$CommentWatcherEvent {
  const factory CommentWatcherEvent.experienceCommentsLoaded(int experienceId) = _ExperienceCommentsLoaded;
}
