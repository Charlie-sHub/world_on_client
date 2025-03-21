import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/comments/comment_form/comment_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/comments/use_case/edit_comment.dart';
import 'package:worldon/domain/comments/use_case/post_comment.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  PostComment postComment;
  GetLoggedInUser getLoggedInUser;
  EditComment editComment;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      postComment = getIt<PostComment>();
      getLoggedInUser = getIt<GetLoggedInUser>();
      editComment = getIt<EditComment>();
    },
  );
  final _validPoster = getValidUser();
  const content = "Testing";
  final experienceId = UniqueId();
  final commentToEdit = Comment.empty().copyWith(
    poster: _validPoster,
    content: CommentContent(content),
  );
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<CommentFormBloc>(),
    expect: [],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        TestDescription.shouldEmitInitialized,
        build: () => getIt<CommentFormBloc>(),
        act: (bloc) async => bloc.add(
          CommentFormEvent.initialized(
            experienceId: experienceId,
            commentOption: some(commentToEdit),
          ),
        ),
        expect: [
          CommentFormState.initial().copyWith(
            comment: commentToEdit,
            isEditing: true,
          ),
        ],
      );
      blocTest(
        TestDescription.shouldNotEmitInitialized,
        build: () => getIt<CommentFormBloc>(),
        act: (bloc) async => bloc.add(
          CommentFormEvent.initialized(
            experienceId: experienceId,
            commentOption: none(),
          ),
        ),
        expect: [],
      );
    },
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the content",
    build: () => getIt<CommentFormBloc>(),
    act: (bloc) async {
      bloc.add(
        CommentFormEvent.initialized(
          experienceId: experienceId,
          commentOption: none(),
        ),
      );
      bloc.add(const CommentFormEvent.contentChanged(content));
    },
    expect: [
      CommentFormState.initial().copyWith(
        comment: Comment.empty().copyWith(
          content: CommentContent(content),
        ),
        failureOrSuccessOption: none(),
      ),
    ],
  );
  group(
    TestDescription.groupOnSuccess,
    () {
      blocTest(
        "${TestDescription.shouldEmitSuccess} creating a new Comment",
        build: () {
          when(postComment.call(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(_validPoster));
          return getIt<CommentFormBloc>();
        },
        act: (bloc) async {
          bloc.add(
            CommentFormEvent.initialized(
              experienceId: experienceId,
              commentOption: none(),
            ),
          );
          bloc.add(const CommentFormEvent.contentChanged(content));
          bloc.add(const CommentFormEvent.submitted());
        },
        verify: (_) async {
          verify(postComment.call(any));
        },
        expect: [
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              poster: _validPoster,
              experienceId: experienceId,
            ),
            failureOrSuccessOption: none(),
          ),
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              poster: _validPoster,
              experienceId: experienceId,
              content: CommentContent(content),
            ),
            failureOrSuccessOption: none(),
          ),
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              poster: _validPoster,
              experienceId: experienceId,
              content: CommentContent(content),
            ),
            isSubmitting: true,
            failureOrSuccessOption: none(),
          ),
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              poster: _validPoster,
              experienceId: experienceId,
              content: CommentContent(content),
            ),
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} editing a Comment",
        build: () {
          when(editComment.call(any)).thenAnswer((_) async => right(unit));
          return getIt<CommentFormBloc>();
        },
        act: (bloc) async {
          bloc.add(
            CommentFormEvent.initialized(
              experienceId: experienceId,
              commentOption: some(commentToEdit),
            ),
          );
          bloc.add(const CommentFormEvent.contentChanged(content));
          bloc.add(const CommentFormEvent.submitted());
        },
        verify: (_) async {
          verify(editComment.call(any));
        },
        expect: [
          CommentFormState.initial().copyWith(
            comment: commentToEdit.copyWith(
              content: CommentContent(content),
            ),
            isEditing: true,
            failureOrSuccessOption: none(),
          ),
          CommentFormState.initial().copyWith(
            comment: commentToEdit.copyWith(
              content: CommentContent(content),
            ),
            isSubmitting: true,
            isEditing: true,
            failureOrSuccessOption: none(),
          ),
          CommentFormState.initial().copyWith(
            comment: commentToEdit.copyWith(
              content: CommentContent(content),
            ),
            isSubmitting: false,
            isEditing: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      blocTest(
        "${TestDescription.shouldEmitFailure} creating a new Comment",
        build: () {
          when(postComment.call(any)).thenAnswer((_) async => left(failure));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(_validPoster));
          return getIt<CommentFormBloc>();
        },
        act: (bloc) async {
          bloc.add(
            CommentFormEvent.initialized(
              experienceId: experienceId,
              commentOption: none(),
            ),
          );
          bloc.add(const CommentFormEvent.contentChanged(content));
          bloc.add(const CommentFormEvent.submitted());
        },
        verify: (_) async {
          verify(postComment.call(any));
        },
        expect: [
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              experienceId: experienceId,
              poster: _validPoster,
            ),
            failureOrSuccessOption: none(),
          ),
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              experienceId: experienceId,
              poster: _validPoster,
              content: CommentContent(content),
            ),
            failureOrSuccessOption: none(),
          ),
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              experienceId: experienceId,
              poster: _validPoster,
              content: CommentContent(content),
            ),
            isSubmitting: true,
            failureOrSuccessOption: none(),
          ),
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              experienceId: experienceId,
              poster: _validPoster,
              content: CommentContent(content),
            ),
            isSubmitting: false,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} editing a Comment",
        build: () {
          when(editComment.call(any)).thenAnswer((_) async => left(failure));
          return getIt<CommentFormBloc>();
        },
        act: (bloc) async {
          bloc.add(
            CommentFormEvent.initialized(
              experienceId: experienceId,
              commentOption: some(commentToEdit),
            ),
          );
          bloc.add(const CommentFormEvent.contentChanged(content));
          bloc.add(const CommentFormEvent.submitted());
        },
        verify: (_) async {
          verify(editComment.call(any));
        },
        expect: [
          CommentFormState.initial().copyWith(
            comment: commentToEdit.copyWith(
              content: CommentContent(content),
            ),
            isEditing: true,
            failureOrSuccessOption: none(),
          ),
          CommentFormState.initial().copyWith(
            comment: commentToEdit.copyWith(
              content: CommentContent(content),
            ),
            isSubmitting: true,
            isEditing: true,
            failureOrSuccessOption: none(),
          ),
          CommentFormState.initial().copyWith(
            comment: commentToEdit.copyWith(
              content: CommentContent(content),
            ),
            isEditing: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
    },
  );
  blocTest(
    TestDescription.shouldResetOption,
    build: () {
      when(editComment.call(any)).thenAnswer((_) async => left(failure));
      return getIt<CommentFormBloc>();
    },
    act: (bloc) async {
      bloc.add(
        CommentFormEvent.initialized(
          experienceId: experienceId,
          commentOption: some(commentToEdit),
        ),
      );
      bloc.add(const CommentFormEvent.contentChanged(content));
      bloc.add(const CommentFormEvent.submitted());
      bloc.add(const CommentFormEvent.contentChanged(content));
    },
    verify: (_) async {
      verify(editComment.call(any));
    },
    expect: [
      CommentFormState.initial().copyWith(
        comment: commentToEdit.copyWith(
          content: CommentContent(content),
        ),
        isEditing: true,
        failureOrSuccessOption: none(),
      ),
      CommentFormState.initial().copyWith(
        comment: commentToEdit.copyWith(
          content: CommentContent(content),
        ),
        isSubmitting: true,
        isEditing: true,
        failureOrSuccessOption: none(),
      ),
      CommentFormState.initial().copyWith(
        comment: commentToEdit.copyWith(
          content: CommentContent(content),
        ),
        isEditing: true,
        showErrorMessages: true,
        failureOrSuccessOption: some(left(failure)),
      ),
      CommentFormState.initial().copyWith(
        comment: commentToEdit.copyWith(
          content: CommentContent(content),
        ),
        isEditing: true,
        showErrorMessages: true,
      ),
    ],
  );
}
