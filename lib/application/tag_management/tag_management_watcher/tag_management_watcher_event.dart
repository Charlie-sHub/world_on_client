part of 'tag_management_watcher_bloc.dart';

@freezed
abstract class TagManagementWatcherEvent with _$TagManagementWatcherEvent {
  const factory TagManagementWatcherEvent.watchAllTagsStarted() = _WatchAllTagsStarted;
}
