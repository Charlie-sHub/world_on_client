import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/use_case/watch_experience_comments.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

part 'comment_watcher_bloc.freezed.dart';
part 'comment_watcher_event.dart';
part 'comment_watcher_state.dart';

@injectable
class CommentWatcherBloc
    extends Bloc<CommentWatcherEvent, CommentWatcherState> {
  CommentWatcherBloc() : super(const CommentWatcherState.initial()) {
    on<_WatchExperienceCommentsStarted>(_onWatchExperienceCommentsStarted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Comment>>>?
      _experienceCommentsStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrComments.fold(
        (failure) => CommentWatcherState.loadFailure(failure),
        (comments) => CommentWatcherState.loadSuccess(comments),
      ),
    );
  }

  FutureOr<void> _onWatchExperienceCommentsStarted(
    _WatchExperienceCommentsStarted event,
    Emitter emit,
  ) async {
    emit(const CommentWatcherState.loadInProgress());
    await _experienceCommentsStreamSubscription?.cancel();
    _experienceCommentsStreamSubscription = getIt<WatchExperienceComments>()(
      Params(experienceId: event.experienceId),
    ).listen(
      (failureOrComments) =>
          add(CommentWatcherEvent.resultsReceived(failureOrComments)),
    );
  }

  @override
  Future<void> close() async {
    await _experienceCommentsStreamSubscription?.cancel();
    return super.close();
  }
}
