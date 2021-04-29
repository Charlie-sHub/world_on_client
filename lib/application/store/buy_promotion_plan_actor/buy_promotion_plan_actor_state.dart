part of 'buy_promotion_plan_actor_bloc.dart';

@freezed
class BuyPromotionPlanActorState with _$BuyPromotionPlanActorState {
  const factory BuyPromotionPlanActorState.initial() = _Initial;

  const factory BuyPromotionPlanActorState.actionInProgress() = _ActionInProgress;

  const factory BuyPromotionPlanActorState.purchaseSuccess() = _PurchaseSuccess;

  const factory BuyPromotionPlanActorState.noPromotionPlan() = _NoPromotionPlan;

  const factory BuyPromotionPlanActorState.currentPlan(PromotionPlan promotionPlan) = _CurrentPlan;

  const factory BuyPromotionPlanActorState.purchaseFailure(Failure<dynamic> failure) = _PurchaseFailure;
}
