part of 'buy_coin_bloc.dart';

@freezed
abstract class BuyCoinState with _$BuyCoinState {
  const factory BuyCoinState.initial() = _Initial;

  const factory BuyCoinState.actionInProgress() = _ActionInProgress;

  const factory BuyCoinState.purchaseSuccess() = _PurchaseSuccess;

  const factory BuyCoinState.purchaseFailure(Failure<dynamic> failure) = _PurchaseFailure;
}
