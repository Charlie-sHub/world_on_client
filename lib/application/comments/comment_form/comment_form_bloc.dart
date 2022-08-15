import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/use_case/edit_comment.dart'
    as edit_comment;
import 'package:worldon/domain/comments/use_case/post_comment.dart'
    as post_comment;
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

part 'comment_form_bloc.freezed.dart';
part 'comment_form_event.dart';
part 'comment_form_state.dart';

@injectable
class CommentFormBloc extends Bloc<CommentFormEvent, CommentFormState> {
  CommentFormBloc() : super(CommentFormState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_ContentChanged>(_onContentChanged);
    on<_Submitted>(_onSubmitted);
  }

  FutureOr<void> _onSubmitted(_Submitted event, Emitter emit) async {
    late Either<Failure, Unit> failureOrUnit;
    emit(
      state.copyWith(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      ),
    );
    if (state.comment.isValid) {
      if (state.isEditing) {
        failureOrUnit = await getIt<edit_comment.EditComment>()(
          edit_comment.Params(
            comment: state.comment,
            userRequesting: event.currentUser,
          ),
        );
      } else {
        failureOrUnit = await getIt<post_comment.PostComment>()(
          post_comment.Params(
            comment: state.comment,
          ),
        );
      }
    }
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        failureOrSuccessOption: optionOf(failureOrUnit),
      ),
    );
  }

  void _onContentChanged(_ContentChanged event, Emitter emit) => emit(
        state.copyWith(
          comment: state.comment.copyWith(
            content: CommentContent(event.content),
          ),
          failureOrSuccessOption: none(),
        ),
      );

  void _onInitialized(_Initialized event, Emitter emit) => emit(
        event.commentOption.fold(
          () => state.copyWith(
            comment: Comment.empty().copyWith(
              poster: event.user,
              experienceId: event.experienceId,
            ),
          ),
          (comment) => state.copyWith(
            comment: comment,
            isEditing: true,
          ),
        ),
      );
}
