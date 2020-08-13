import 'dart:async';

import 'package:bloc/bloc.dart';
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

  @override
  Stream<CommentWatcherState> mapEventToState(CommentWatcherEvent event) async* {
    yield* event.map(
      watchExperienceCommentsStarted: onWatchExperienceCommentsStarted,
    );
  }

  Stream<CommentWatcherState> onWatchExperienceCommentsStarted(_WatchExperienceCommentsStarted event) async* {
    yield const CommentWatcherState.loadInProgress();
    final _getExperienceComments = getIt<WatchExperienceComments>();
    final _params = Params(
      experienceId: event.experienceId,
    );
    yield* _getExperienceComments(_params).map(
      (failureOrComments) => failureOrComments.fold(
        (failure) => CommentWatcherState.loadFailure(failure),
        (comments) => CommentWatcherState.loadSuccess(comments),
      ),
    );
  }
}
