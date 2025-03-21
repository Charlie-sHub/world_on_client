part of 'comment_watcher_bloc.dart';

@freezed
class CommentWatcherState with _$CommentWatcherState {
  const factory CommentWatcherState.initial() = _Initial;

  const factory CommentWatcherState.loadInProgress() = _LoadInProgress;

  const factory CommentWatcherState.loadSuccess(KtList<Comment> comments) = _LoadSuccess;

  const factory CommentWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
