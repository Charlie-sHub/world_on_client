part of 'promotion_plans_loader_bloc.dart';

@freezed
class PromotionPlansLoaderState with _$PromotionPlansLoaderState {
  const factory PromotionPlansLoaderState.initial() = _Initial;

  const factory PromotionPlansLoaderState.actionInProgress() = _ActionInProgress;

  const factory PromotionPlansLoaderState.loadedPromotionPlans(KtList<PromotionPlan> plans) = _LoadedPromotionPlans;

  const factory PromotionPlansLoaderState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
