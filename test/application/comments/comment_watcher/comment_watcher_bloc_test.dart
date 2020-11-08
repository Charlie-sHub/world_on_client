import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/comments/comment_watcher/comment_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/comments/use_case/watch_experience_comments.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchExperienceComments getExperienceComments;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      getExperienceComments = getIt<WatchExperienceComments>();
    },
  );
  final commentList = KtList.of(Comment.empty());
  final experienceId = UniqueId();
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<CommentWatcherBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(getExperienceComments.call(any)).thenAnswer((realInvocation) => createStream(right(commentList)));
      return getIt<CommentWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(CommentWatcherEvent.watchExperienceCommentsStarted(experienceId));
      bloc.add(CommentWatcherEvent.resultsReceived(right(commentList)));
    },
    verify: (_) async {
      verify(getExperienceComments.call(any));
      verifyNoMoreInteractions(getExperienceComments);
    },
    expect: [
      const CommentWatcherState.loadInProgress(),
      CommentWatcherState.loadSuccess(commentList),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () {
      when(getExperienceComments.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<CommentWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(CommentWatcherEvent.watchExperienceCommentsStarted(experienceId));
      bloc.add(CommentWatcherEvent.resultsReceived(left(failure)));
    },
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
