part of 'watch_owned_items_bloc.dart';

@freezed
abstract class WatchOwnedItemsEvent with _$WatchOwnedItemsEvent {
  const factory WatchOwnedItemsEvent.watchOwnedItemsStarted() = _WatchOwnedItemsStarted;

  const factory WatchOwnedItemsEvent.resultsReceived(Either<Failure, KtList<Item>> failureOrItems) = _ResultsReceived;
}
