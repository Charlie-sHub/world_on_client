part of 'comment_actor_bloc.dart';

@freezed
class CommentActorEvent with _$CommentActorEvent {
  const factory CommentActorEvent.deleted(
    Comment comment,
    User currentUser,
  ) = _Deleted;
}
