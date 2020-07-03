import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/comments/comment_form/comment_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/comments/use_case/edit_comment.dart';
import 'package:worldon/domain/comments/use_case/post_comment.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_user.dart';
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
  const experienceId = 1;
  final commentToEdit = Comment.empty().copyWith(
    poster: _validPoster,
    content: CommentContent(content),
  );
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<CommentFormBloc>(),
    skip: 0,
    expect: [CommentFormState.initial()],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        TestDescription.shouldEmitInitialized,
        build: () async => getIt<CommentFormBloc>(),
        act: (bloc) async => bloc.add(
          CommentFormEvent.initialize(
            experienceId: experienceId,
            commentOption: some(commentToEdit),
          ),
        ),
        expect: [
          CommentFormState.initial().copyWith(
            comment: commentToEdit,
            experienceId: experienceId,
            isEditing: true,
          ),
        ],
      );
      blocTest(
        TestDescription.nonInitializedState,
        build: () async => getIt<CommentFormBloc>(),
        act: (bloc) async => bloc.add(
          CommentFormEvent.initialize(
            experienceId: experienceId,
            commentOption: none(),
          ),
        ),
        skip: 0,
        expect: [CommentFormState.initial()],
      );
    },
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the content",
    build: () async => getIt<CommentFormBloc>(),
    act: (bloc) async {
      bloc.add(
        CommentFormEvent.initialize(
          experienceId: experienceId,
          commentOption: none(),
        ),
      );
      bloc.add(const CommentFormEvent.contentChange(content));
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
        build: () async {
          when(postComment.call(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(_validPoster));
          return getIt<CommentFormBloc>();
        },
        act: (bloc) async {
          bloc.add(
            CommentFormEvent.initialize(
              experienceId: experienceId,
              commentOption: none(),
            ),
          );
          bloc.add(const CommentFormEvent.contentChange(content));
          bloc.add(const CommentFormEvent.submit());
        },
        verify: (_) async {
          verify(postComment.call(any));
        },
        expect: [
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              poster: _validPoster,
            ),
            failureOrSuccessOption: none(),
            experienceId: experienceId,
          ),
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              poster: _validPoster,
              content: CommentContent(content),
            ),
            failureOrSuccessOption: none(),
            experienceId: experienceId,
          ),
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              poster: _validPoster,
              content: CommentContent(content),
            ),
            isSubmitting: true,
            failureOrSuccessOption: none(),
            experienceId: experienceId,
          ),
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              poster: _validPoster,
              content: CommentContent(content),
            ),
            isSubmitting: false,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
            experienceId: experienceId,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} editing a Comment",
        build: () async {
          when(editComment.call(any)).thenAnswer((_) async => right(unit));
          return getIt<CommentFormBloc>();
        },
        act: (bloc) async {
          bloc.add(
            CommentFormEvent.initialize(
              experienceId: experienceId,
              commentOption: some(commentToEdit),
            ),
          );
          bloc.add(const CommentFormEvent.contentChange(content));
          bloc.add(const CommentFormEvent.submit());
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
            experienceId: experienceId,
          ),
          CommentFormState.initial().copyWith(
            comment: commentToEdit.copyWith(
              content: CommentContent(content),
            ),
            isSubmitting: true,
            isEditing: true,
            failureOrSuccessOption: none(),
            experienceId: experienceId,
          ),
          CommentFormState.initial().copyWith(
            comment: commentToEdit.copyWith(
              content: CommentContent(content),
            ),
            isSubmitting: false,
            isEditing: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
            experienceId: experienceId,
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
        build: () async {
          when(postComment.call(any)).thenAnswer((_) async => left(failure));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(_validPoster));
          return getIt<CommentFormBloc>();
        },
        act: (bloc) async {
          bloc.add(
            CommentFormEvent.initialize(
              experienceId: experienceId,
              commentOption: none(),
            ),
          );
          bloc.add(const CommentFormEvent.contentChange(content));
          bloc.add(const CommentFormEvent.submit());
        },
        verify: (_) async {
          verify(postComment.call(any));
        },
        expect: [
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              poster: _validPoster,
            ),
            failureOrSuccessOption: none(),
            experienceId: experienceId,
          ),
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              poster: _validPoster,
              content: CommentContent(content),
            ),
            failureOrSuccessOption: none(),
            experienceId: experienceId,
          ),
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              poster: _validPoster,
              content: CommentContent(content),
            ),
            isSubmitting: true,
            failureOrSuccessOption: none(),
            experienceId: experienceId,
          ),
          CommentFormState.initial().copyWith(
            comment: Comment.empty().copyWith(
              poster: _validPoster,
              content: CommentContent(content),
            ),
            isSubmitting: false,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
            experienceId: experienceId,
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} editing a Comment",
        build: () async {
          when(editComment.call(any)).thenAnswer((_) async => left(failure));
          return getIt<CommentFormBloc>();
        },
        act: (bloc) async {
          bloc.add(
            CommentFormEvent.initialize(
              experienceId: experienceId,
              commentOption: some(commentToEdit),
            ),
          );
          bloc.add(const CommentFormEvent.contentChange(content));
          bloc.add(const CommentFormEvent.submit());
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
            experienceId: experienceId,
          ),
          CommentFormState.initial().copyWith(
            comment: commentToEdit.copyWith(
              content: CommentContent(content),
            ),
            isSubmitting: true,
            isEditing: true,
            failureOrSuccessOption: none(),
            experienceId: experienceId,
          ),
          CommentFormState.initial().copyWith(
            comment: commentToEdit.copyWith(
              content: CommentContent(content),
            ),
            isEditing: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
            experienceId: experienceId,
          ),
        ],
      );
    },
  );
  blocTest(
    TestDescription.shouldResetOption,
    build: () async {
      when(editComment.call(any)).thenAnswer((_) async => left(failure));
      return getIt<CommentFormBloc>();
    },
    act: (bloc) async {
      bloc.add(
        CommentFormEvent.initialize(
          experienceId: experienceId,
          commentOption: some(commentToEdit),
        ),
      );
      bloc.add(const CommentFormEvent.contentChange(content));
      bloc.add(const CommentFormEvent.submit());
      bloc.add(const CommentFormEvent.contentChange(content));
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
        experienceId: experienceId,
      ),
      CommentFormState.initial().copyWith(
        comment: commentToEdit.copyWith(
          content: CommentContent(content),
        ),
        isSubmitting: true,
        isEditing: true,
        failureOrSuccessOption: none(),
        experienceId: experienceId,
      ),
      CommentFormState.initial().copyWith(
        comment: commentToEdit.copyWith(
          content: CommentContent(content),
        ),
        isEditing: true,
        showErrorMessages: true,
        failureOrSuccessOption: some(left(failure)),
        experienceId: experienceId,
      ),
      CommentFormState.initial().copyWith(
        comment: commentToEdit.copyWith(
          content: CommentContent(content),
        ),
        isEditing: true,
        showErrorMessages: true,
        failureOrSuccessOption: none(),
        experienceId: experienceId,
      ),
    ],
  );
}
