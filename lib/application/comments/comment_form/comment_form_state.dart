part of 'comment_form_bloc.dart';

@freezed
class CommentFormState with _$CommentFormState {
  const factory CommentFormState({
    required Comment comment,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSubmitting,
    required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _CommentFormState;

  factory CommentFormState.initial() => CommentFormState(
        comment: Comment.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
