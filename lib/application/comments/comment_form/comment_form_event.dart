part of 'comment_form_bloc.dart';

@freezed
abstract class CommentFormEvent with _$CommentFormEvent {
  const factory CommentFormEvent.initialize({
    @required Option<Comment> commentOption,
    @required int experienceId,
  }) = _Initialize;

  const factory CommentFormEvent.contentChange(String content) = _ContentChange;

  const factory CommentFormEvent.submit() = _Submit;
}
