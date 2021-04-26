part of 'store_navigation_actor_bloc.dart';

@freezed
class StoreNavigationActorState with _$StoreNavigationActorState {
  const factory StoreNavigationActorState.storeView() = _StoreView;

  const factory StoreNavigationActorState.promotionPlansView() = _PromotionPlansView;

  const factory StoreNavigationActorState.myItemsView() = _MyItemsView;
}
