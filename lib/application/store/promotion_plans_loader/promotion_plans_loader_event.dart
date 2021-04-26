part of 'promotion_plans_loader_bloc.dart';

@freezed
class PromotionPlansLoaderEvent with _$PromotionPlansLoaderEvent {
  const factory PromotionPlansLoaderEvent.loadPromotionPlans() = _LoadPromotionPlans;
}
