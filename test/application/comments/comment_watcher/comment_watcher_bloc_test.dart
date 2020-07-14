import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/comments/comment_watcher/comment_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/comments/use_case/get_experience_comments.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  GetExperienceComments getExperienceComments;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      getExperienceComments = getIt<GetExperienceComments>();
    },
  );
  final commentSet = KtSet.of(Comment.empty());
  const experienceId = 1;
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<CommentWatcherBloc>(),
    skip: 0,
    expect: [const CommentWatcherState.initial()],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () async {
      when(getExperienceComments.call(any)).thenAnswer((realInvocation) => createStream(right(commentSet)));
      return getIt<CommentWatcherBloc>();
    },
    act: (bloc) async => bloc.add(const CommentWatcherEvent.watchExperienceCommentsStarted(experienceId)),
    verify: (_) async {
      verify(getExperienceComments.call(any));
      verifyNoMoreInteractions(getExperienceComments);
    },
    expect: [
      const CommentWatcherState.loadInProgress(),
      CommentWatcherState.loadSuccess(commentSet),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () async {
      when(getExperienceComments.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<CommentWatcherBloc>();
    },
    act: (bloc) async => bloc.add(const CommentWatcherEvent.watchExperienceCommentsStarted(experienceId)),
    verify: (_) async {
      verify(getExperienceComments.call(any));
      verifyNoMoreInteractions(getExperienceComments);
    },
    expect: [
      const CommentWatcherState.loadInProgress(),
      const CommentWatcherState.loadFailure(failure),
    ],
  );
}
