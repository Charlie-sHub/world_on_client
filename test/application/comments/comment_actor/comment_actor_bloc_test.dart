import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/comments/comment_actor/comment_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/comments/use_case/delete_comment.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  DeleteComment deleteComment;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      deleteComment = getIt<DeleteComment>();
    },
  );
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<CommentActorBloc>(),
    skip: 0,
    expect: [const CommentActorState.initial()],
  );
  group(
    TestDescription.deleteEventTests,
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () async {
          when(deleteComment.call(any)).thenAnswer((_) async => right(unit));
          return getIt<CommentActorBloc>();
        },
        act: (bloc) async => bloc.add(CommentActorEvent.deleted(Comment.empty())),
        verify: (_) async {
          verify(deleteComment.call(any));
          verifyNoMoreInteractions(deleteComment);
        },
        expect: [
          const CommentActorState.actionInProgress(),
          const CommentActorState.deletionSuccess(),
        ],
      );

      blocTest(
        TestDescription.shouldEmitFailure,
        build: () async {
          when(deleteComment.call(any)).thenAnswer((_) async => left(failure));
          return getIt<CommentActorBloc>();
        },
        act: (bloc) async => bloc.add(CommentActorEvent.deleted(Comment.empty())),
        verify: (_) async {
          verify(deleteComment.call(any));
          verifyNoMoreInteractions(deleteComment);
        },
        expect: [
          const CommentActorState.actionInProgress(),
          const CommentActorState.deletionFailure(failure),
        ],
      );
    },
  );
}
