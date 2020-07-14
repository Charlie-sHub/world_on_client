part of 'comment_watcher_bloc.dart';

@freezed
abstract class CommentWatcherState with _$CommentWatcherState {
  const factory CommentWatcherState.initial() = _Initial;

  const factory CommentWatcherState.loadInProgress() = _LoadInProgress;

  const factory CommentWatcherState.loadSuccess(KtSet<Comment> comments) = _LoadSuccess;

  const factory CommentWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
