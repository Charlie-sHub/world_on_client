part of 'buy_coins_bloc.dart';

@freezed
abstract class BuyCoinsEvent with _$BuyCoinsEvent {
  const factory BuyCoinsEvent.boughtCoins(int amount) = _BoughtCoins;
}
