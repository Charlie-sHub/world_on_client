part of 'comment_actor_bloc.dart';

@freezed
abstract class CommentActorState with _$CommentActorState {
  const factory CommentActorState.initial() = _Initial;

  const factory CommentActorState.actionInProgress() = _ActionInProgress;

  const factory CommentActorState.deletionSuccess() = _DeletionSuccess;

  const factory CommentActorState.deletionFailure(Failure<dynamic> failure) = _DeletionFailure;
}
