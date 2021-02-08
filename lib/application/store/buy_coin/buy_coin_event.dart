part of 'buy_coin_bloc.dart';

@freezed
abstract class BuyCoinEvent with _$BuyCoinEvent {
  const factory BuyCoinEvent.boughtCoin() = _BoughtCoin;
}
