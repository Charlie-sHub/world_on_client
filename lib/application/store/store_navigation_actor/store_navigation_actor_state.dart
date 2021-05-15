part of 'store_navigation_actor_bloc.dart';

@freezed
class StoreNavigationActorState with _$StoreNavigationActorState {
  const factory StoreNavigationActorState.itemStoreView() = _ItemStoreView;

  const factory StoreNavigationActorState.coinStoreView() = _CoinStoreView;

  const factory StoreNavigationActorState.promotionPlansView() = _PromotionPlansView;

  const factory StoreNavigationActorState.myItemsView() = _MyItemsView;
}
