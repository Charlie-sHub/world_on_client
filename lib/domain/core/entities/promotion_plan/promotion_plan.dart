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
    required int timesSeen,
  }) = _PromotionPlan;

  factory PromotionPlan.empty() => PromotionPlan(
        id: UniqueId(),
        name: Name("No Plan"),
        description: EntityDescription("No plan has been purchased"),
        code: PromotionPlanCode.none,
        valueInEuros: 0,
        boughtDate: DateTime.now(),
        timesSeen: 0,
      );

  Option<ValueFailure<dynamic>> get failureOption =>
      name.failureOrUnit.andThen(description.failureOrUnit).fold(
            some,
            (_) => none(),
          );

  bool get isValid => failureOption.isNone();

  bool get isUsable {
    final _currentDate = DateTime.now();
    DateTime _lastValidDate;
    switch (code) {
      case PromotionPlanCode.none:
        return false;
      case PromotionPlanCode.weekLongPromotion:
        _lastValidDate = boughtDate.add(
          const Duration(days: 7),
        );
        break;
      case PromotionPlanCode.monthLongPromotion:
        _lastValidDate = boughtDate.add(
          const Duration(days: 30),
        );
        break;
      case PromotionPlanCode.seasonLongPromotion:
        _lastValidDate = boughtDate.add(
          const Duration(days: 90),
        );
        break;
      case PromotionPlanCode.yearLongPromotion:
        _lastValidDate = boughtDate.add(
          const Duration(days: 365),
        );
        break;
    }
    return _lastValidDate.isAfter(_currentDate);
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

  int get amountOfDays {
    switch (code) {
      case PromotionPlanCode.none:
        return 0;
      case PromotionPlanCode.weekLongPromotion:
        return 7;
      case PromotionPlanCode.monthLongPromotion:
        return 30;
      case PromotionPlanCode.seasonLongPromotion:
        return 90;
      case PromotionPlanCode.yearLongPromotion:
        return 365;
    }
  }
}
