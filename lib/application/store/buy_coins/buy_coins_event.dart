part of 'buy_coins_bloc.dart';

@freezed
class BuyCoinsEvent with _$BuyCoinsEvent {
  const factory BuyCoinsEvent.boughtCoins(int amount) = _BoughtCoins;
}
