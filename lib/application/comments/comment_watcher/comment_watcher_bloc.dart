import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/use_case/watch_experience_comments.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/injection.dart';

part 'comment_watcher_bloc.freezed.dart';
part 'comment_watcher_event.dart';
part 'comment_watcher_state.dart';

@injectable
class CommentWatcherBloc extends Bloc<CommentWatcherEvent, CommentWatcherState> {
  CommentWatcherBloc() : super(const CommentWatcherState.initial());
  StreamSubscription<Either<Failure, KtList<Comment>>> _experienceCommentsStreamSubscription;

  @override
  Stream<CommentWatcherState> mapEventToState(CommentWatcherEvent event) async* {
    yield* event.map(
      watchExperienceCommentsStarted: _onWatchExperienceCommentsStarted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<CommentWatcherState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrComments.fold(
      (_failure) => CommentWatcherState.loadFailure(_failure),
      (_comments) => CommentWatcherState.loadSuccess(_comments),
    );
  }

  Stream<CommentWatcherState> _onWatchExperienceCommentsStarted(_WatchExperienceCommentsStarted event) async* {
    yield const CommentWatcherState.loadInProgress();
    await _experienceCommentsStreamSubscription?.cancel();
    final _getExperienceComments = getIt<WatchExperienceComments>();
    final _params = Params(
      experienceId: event.experienceId,
    );
    _experienceCommentsStreamSubscription = _getExperienceComments(_params).listen(
      (_failureOrComments) => add(CommentWatcherEvent.resultsReceived(_failureOrComments)),
    );
  }

  @override
  Future<void> close() async {
    await _experienceCommentsStreamSubscription?.cancel();
    return super.close();
  }
}
