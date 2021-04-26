import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan_code.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'promotion_plan.freezed.dart';

@freezed
class PromotionPlan with _$PromotionPlan {
  const PromotionPlan._();

  const factory PromotionPlan({
    required UniqueId id,
    required Name name,
    required EntityDescription description,
    required PromotionPlanCode code,
    required int valueInEuros,
    required DateTime boughtDate,
  }) = _PromotionPlan;

  factory PromotionPlan.empty() => PromotionPlan(
        id: UniqueId(),
        name: Name("No Plan"),
        description: EntityDescription("No plan has been purchased"),
        code: PromotionPlanCode.none,
        valueInEuros: 0,
        boughtDate: DateTime.now(),
      );

  Option<ValueFailure<dynamic>> get failureOption => name.failureOrUnit.andThen(description.failureOrUnit).fold(
        (failure) => some(failure),
        (_) => none(),
      );

  bool get isValid => failureOption.isNone();

  bool get isUsable {
    final _currentDate = DateTime.now();
    switch (code) {
      case PromotionPlanCode.none:
        return false;
      case PromotionPlanCode.weekLongPromotion:
        return boughtDate
            .add(
              const Duration(days: 7),
            )
            .isBefore(_currentDate);
      case PromotionPlanCode.monthLongPromotion:
        return boughtDate
            .add(
              const Duration(days: 30),
            )
            .isBefore(_currentDate);
      case PromotionPlanCode.seasonLongPromotion:
        return boughtDate
            .add(
              const Duration(days: 90),
            )
            .isBefore(_currentDate);
      case PromotionPlanCode.yearLongPromotion:
        return boughtDate
            .add(
              const Duration(days: 365),
            )
            .isBefore(_currentDate);
    }
  }

  String get productId {
    switch (code) {
      case PromotionPlanCode.none:
        return "none";
      case PromotionPlanCode.weekLongPromotion:
        return "week_long_promotion";
      case PromotionPlanCode.monthLongPromotion:
        return "month_long_promotion";
      case PromotionPlanCode.seasonLongPromotion:
        return "season_long_promotion";
      case PromotionPlanCode.yearLongPromotion:
        return "year_long_promotion";
    }
  }
}
