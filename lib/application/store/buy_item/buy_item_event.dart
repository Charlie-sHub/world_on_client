part of 'buy_item_bloc.dart';

@freezed
abstract class BuyItemEvent with _$BuyItemEvent {
  const factory BuyItemEvent.initialized(Item item) = _Initialized;

  const factory BuyItemEvent.boughtItem(Item item) = _BoughtItem;
}
