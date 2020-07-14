import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/use_case/get_all_tags.dart';
import 'package:worldon/injection.dart';

part 'tag_management_watcher_bloc.freezed.dart';
part 'tag_management_watcher_event.dart';
part 'tag_management_watcher_state.dart';

@injectable
class TagManagementWatcherBloc extends Bloc<TagManagementWatcherEvent, TagManagementWatcherState> {
  TagManagementWatcherBloc() : super(const TagManagementWatcherState.initial());

  @override
  Stream<TagManagementWatcherState> mapEventToState(TagManagementWatcherEvent event) async* {
    yield* event.map(
      watchAllTagsStarted: onWatchAllTagsStarted,
    );
  }

  Stream<TagManagementWatcherState> onWatchAllTagsStarted(_WatchAllTagsStarted event) async* {
    yield const TagManagementWatcherState.loadInProgress();
    final _getAllTags = getIt<GetAllTags>();
    yield* _getAllTags(getIt<NoParams>()).map(
      (failureOrTags) => failureOrTags.fold(
        (failure) => TagManagementWatcherState.loadFailure(failure),
        (tags) => TagManagementWatcherState.loadSuccess(tags),
      ),
    );
  }
}
