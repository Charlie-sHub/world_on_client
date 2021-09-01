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
class TagManagementWatcherBloc extends Bloc<TagManagementWatcherEvent, TagManagementWatcherState> {
  TagManagementWatcherBloc() : super(const TagManagementWatcherState.initial());

  StreamSubscription<Either<Failure, KtList<Tag>>>? _tagsStreamSubscription;

  @override
  Stream<TagManagementWatcherState> mapEventToState(TagManagementWatcherEvent event) async* {
    yield* event.map(
      watchAllTagsStarted: _onWatchAllTagsStarted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<TagManagementWatcherState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrTags.fold(
      (failure) => TagManagementWatcherState.loadFailure(failure),
      (tags) => TagManagementWatcherState.loadSuccess(tags),
    );
  }

  Stream<TagManagementWatcherState> _onWatchAllTagsStarted(_) async* {
    yield const TagManagementWatcherState.loadInProgress();
    await _tagsStreamSubscription?.cancel();
    _tagsStreamSubscription = getIt<WatchAllTags>()(getIt<NoParams>()).listen(
      (_failureOrTags) => add(TagManagementWatcherEvent.resultsReceived(_failureOrTags)),
    );
  }

  @override
  Future<void> close() async {
    await _tagsStreamSubscription?.cancel();
    return super.close();
  }
}
