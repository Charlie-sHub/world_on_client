part of 'tag_management_watcher_bloc.dart';

@freezed
class TagManagementWatcherState with _$TagManagementWatcherState {
  const factory TagManagementWatcherState.initial() = _Initial;

  const factory TagManagementWatcherState.loadInProgress() = _LoadInProgress;

  const factory TagManagementWatcherState.loadSuccess(KtList<Tag> tags) = _LoadSuccess;

  const factory TagManagementWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
