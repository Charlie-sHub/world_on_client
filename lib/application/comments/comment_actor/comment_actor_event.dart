part of 'comment_actor_bloc.dart';

@freezed
abstract class CommentActorEvent with _$CommentActorEvent {
  const factory CommentActorEvent.delete(Comment comment) = _Delete;
}
