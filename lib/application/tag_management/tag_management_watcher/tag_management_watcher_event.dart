part of 'tag_management_watcher_bloc.dart';

@freezed
abstract class TagManagementWatcherEvent with _$TagManagementWatcherEvent {
  const factory TagManagementWatcherEvent.watchAllTagsStarted() = _WatchAllTagsStarted;

  const factory TagManagementWatcherEvent.resultsReceived(Either<Failure, KtList<Tag>> failureOrTags) = _ResultsReceived;
}
