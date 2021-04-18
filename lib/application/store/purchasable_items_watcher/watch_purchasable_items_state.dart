part of 'watch_purchasable_items_bloc.dart';

@freezed
class WatchPurchasableItemsState with _$WatchPurchasableItemsState {
  const factory WatchPurchasableItemsState.initial() = _Initial;

  const factory WatchPurchasableItemsState.loadInProgress() = _LoadInProgress;

  const factory WatchPurchasableItemsState.loadSuccess(KtList<Item> items) = _LoadSuccess;

  const factory WatchPurchasableItemsState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
