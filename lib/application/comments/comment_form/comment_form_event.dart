part of 'comment_form_bloc.dart';

@freezed
class CommentFormEvent with _$CommentFormEvent {
  const factory CommentFormEvent.initialized({
    required SimpleUser user,
    required Option<Comment> commentOption,
    required UniqueId experienceId,
  }) = _Initialized;

  const factory CommentFormEvent.contentChanged(String content) = _ContentChanged;

  const factory CommentFormEvent.submitted() = _Submitted;
}
