part of 'store_navigation_actor_bloc.dart';

@freezed
class StoreNavigationActorEvent with _$StoreNavigationActorEvent {
  const factory StoreNavigationActorEvent.itemStoreTapped() = _ItemStoreTapped;

  const factory StoreNavigationActorEvent.coinStoreTapped() = _CoinStoreTapped;

  const factory StoreNavigationActorEvent.promotionPlansTapped() = _PromotionPlansTapped;

  const factory StoreNavigationActorEvent.myItemsTapped() = _MyItemsTapped;
}
