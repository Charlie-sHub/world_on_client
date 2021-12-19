part of 'buy_promotion_plan_actor_bloc.dart';

@freezed
class BuyPromotionPlanActorEvent with _$BuyPromotionPlanActorEvent {
  const factory BuyPromotionPlanActorEvent.initialized() = _Initialized;

  const factory BuyPromotionPlanActorEvent.boughtPromotionPlan(
    PromotionPlan promotionPlan,
  ) = _BoughtPromotionPlan;
}
