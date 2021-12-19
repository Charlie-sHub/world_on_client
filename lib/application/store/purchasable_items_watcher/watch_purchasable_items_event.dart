part of 'watch_purchasable_items_bloc.dart';

@freezed
class WatchPurchasableItemsEvent with _$WatchPurchasableItemsEvent {
  const factory WatchPurchasableItemsEvent.watchPurchasableItemsStarted() =
      _WatchPurchasableItemsStarted;

  const factory WatchPurchasableItemsEvent.resultsReceived(
    Either<Failure, KtList<Item>> failureOrItems,
  ) = _ResultsReceived;
}
