part of 'buy_item_bloc.dart';

@freezed
class BuyItemState with _$BuyItemState {
  const factory BuyItemState.initial() = _Initial;

  const factory BuyItemState.actionInProgress() = _ActionInProgress;

  const factory BuyItemState.owns() = _Owns;

  const factory BuyItemState.doesNotOwn() = _DoesNotOwn;

  const factory BuyItemState.purchaseSuccess() = _PurchaseSuccess;

  const factory BuyItemState.purchaseFailure(Failure<dynamic> failure) = _PurchaseFailure;
}
