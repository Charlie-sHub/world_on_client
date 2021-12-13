import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/use_case/watch_all_tags.dart';
import 'package:worldon/injection.dart';

part 'tag_management_watcher_bloc.freezed.dart';
part 'tag_management_watcher_event.dart';
part 'tag_management_watcher_state.dart';

@injectable
class TagManagementWatcherBloc
    extends Bloc<TagManagementWatcherEvent, TagManagementWatcherState> {
  TagManagementWatcherBloc()
      : super(const TagManagementWatcherState.initial()) {
    on<_WatchAllTagsStarted>(_onWatchAllTagsStarted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  FutureOr<void> _onWatchAllTagsStarted(
    _WatchAllTagsStarted event,
    Emitter emit,
  ) async {
    emit(const TagManagementWatcherState.loadInProgress());
    await _tagsStreamSubscription?.cancel();
    _tagsStreamSubscription = getIt<WatchAllTags>()(getIt<NoParams>()).listen(
      (_failureOrTags) =>
          add(TagManagementWatcherEvent.resultsReceived(_failureOrTags)),
    );
  }

  void _onResultsReceived(
    _ResultsReceived event,
    Emitter emit,
  ) {
    emit(
      event.failureOrTags.fold(
        (failure) => TagManagementWatcherState.loadFailure(failure),
        (tags) => TagManagementWatcherState.loadSuccess(tags),
      ),
    );
  }

  StreamSubscription<Either<Failure, KtList<Tag>>>? _tagsStreamSubscription;

  @override
  Future<void> close() async {
    await _tagsStreamSubscription?.cancel();
    return super.close();
  }
}
