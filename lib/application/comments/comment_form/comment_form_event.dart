part of 'comment_form_bloc.dart';

@freezed
abstract class CommentFormEvent with _$CommentFormEvent {
  const factory CommentFormEvent.initialized({
    @required Option<Comment> commentOption,
    @required int experienceId,
  }) = _Initialized;

  const factory CommentFormEvent.contentChanged(String content) = _ContentChanged;

  const factory CommentFormEvent.submitted() = _Submitted;
}
