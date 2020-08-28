import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/comments/use_case/edit_comment.dart' as edit_comment;
import 'package:worldon/domain/comments/use_case/post_comment.dart' as post_comment;
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/injection.dart';

part 'comment_form_bloc.freezed.dart';
part 'comment_form_event.dart';
part 'comment_form_state.dart';

@injectable
class CommentFormBloc extends Bloc<CommentFormEvent, CommentFormState> {
  CommentFormBloc() : super(CommentFormState.initial());

  @override
  Stream<CommentFormState> mapEventToState(CommentFormEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      contentChanged: _onContentChanged,
      submitted: _onSubmitted,
    );
  }

  Stream<CommentFormState> _onSubmitted(_) async* {
    Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    if (state.comment.isValid) {
      if (state.isEditing) {
        final _editComment = getIt<edit_comment.EditComment>();
        _failureOrUnit = await _editComment(
          edit_comment.Params(
            comment: state.comment,
          ),
        );
      } else {
        final _postComment = getIt<post_comment.PostComment>();
        _failureOrUnit = await _postComment(
          post_comment.Params(
            experienceId: state.experienceId,
            comment: state.comment,
          ),
        );
      }
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      failureOrSuccessOption: optionOf(_failureOrUnit),
    );
  }

  Stream<CommentFormState> _onContentChanged(_ContentChanged event) async* {
    yield state.copyWith(
      comment: state.comment.copyWith(
        content: CommentContent(event.content),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<CommentFormState> _onInitialized(_Initialized event) async* {
    yield await event.commentOption.fold(
      () async {
        final _getLoggedInUser = getIt<GetLoggedInUser>();
        final _currentUserOption = await _getLoggedInUser(getIt<NoParams>());
        final _currentUser = _currentUserOption.fold(
          () => throw UnAuthenticatedError(),
          id,
        );
        return state.copyWith(
          comment: Comment.empty().copyWith(
            poster: _currentUser,
          ),
          experienceId: event.experienceId,
        );
      },
      (comment) => state.copyWith(
        comment: comment,
        experienceId: event.experienceId,
        isEditing: true,
      ),
    );
  }
}
