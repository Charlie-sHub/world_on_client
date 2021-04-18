part of 'watch_owned_items_bloc.dart';

@freezed
class WatchOwnedItemsState with _$WatchOwnedItemsState {
  const factory WatchOwnedItemsState.initial() = _Initial;

  const factory WatchOwnedItemsState.loadInProgress() = _LoadInProgress;

  const factory WatchOwnedItemsState.loadSuccess(KtList<Item> items) = _LoadSuccess;

  const factory WatchOwnedItemsState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
