part of 'buy_coins_bloc.dart';

@freezed
class BuyCoinsState with _$BuyCoinsState {
  const factory BuyCoinsState.initial() = _Initial;

  const factory BuyCoinsState.actionInProgress() = _ActionInProgress;

  const factory BuyCoinsState.purchaseSuccess() = _PurchaseSuccess;

  const factory BuyCoinsState.purchaseFailure(Failure<dynamic> failure) = _PurchaseFailure;
}
