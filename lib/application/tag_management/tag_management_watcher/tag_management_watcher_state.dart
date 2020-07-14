part of 'tag_management_watcher_bloc.dart';

@freezed
abstract class TagManagementWatcherState with _$TagManagementWatcherState {
  const factory TagManagementWatcherState.initial() = _Initial;

  const factory TagManagementWatcherState.loadInProgress() = _LoadInProgress;

  const factory TagManagementWatcherState.loadSuccess(KtSet<Tag> tags) = _loadSuccess;

  const factory TagManagementWatcherState.loadFailure(Failure<dynamic> failure) = _loadFailure;
}
