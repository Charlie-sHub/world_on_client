part of 'comment_watcher_bloc.dart';

@freezed
abstract class CommentWatcherState with _$CommentWatcherState {
  const factory CommentWatcherState.initial() = _Initial;

  const factory CommentWatcherState.loading() = _Loading;

  const factory CommentWatcherState.loadSuccess(Set<Comment> comments) = _LoadSuccess;

  const factory CommentWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
