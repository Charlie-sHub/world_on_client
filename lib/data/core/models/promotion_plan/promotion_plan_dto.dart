import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/misc/server_timestamp_converter.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan_code.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'promotion_plan_dto.freezed.dart';
part 'promotion_plan_dto.g.dart';

@freezed
class PromotionPlanDto with _$PromotionPlanDto {
  const PromotionPlanDto._();

  const factory PromotionPlanDto({
    required String id,
    required String name,
    required String description,
    required PromotionPlanCode code,
    required int valueInEuros,
    @ServerTimestampConverter() required DateTime boughtDate,
    required int timesSeen,
  }) = _PromotionPlan;

  factory PromotionPlanDto.fromDomain(PromotionPlan plan) => PromotionPlanDto(
        id: plan.id.getOrCrash(),
        name: plan.name.getOrCrash(),
        description: plan.description.getOrCrash(),
        code: plan.code,
        valueInEuros: plan.valueInEuros,
        boughtDate: plan.boughtDate,
        timesSeen: plan.timesSeen,
      );

  PromotionPlan toDomain() => PromotionPlan(
        id: UniqueId.fromUniqueString(id),
        name: Name(name),
        description: EntityDescription(description),
        code: code,
        valueInEuros: valueInEuros,
        boughtDate: boughtDate,
        timesSeen: timesSeen,
      );

  factory PromotionPlanDto.fromJson(Map<String, dynamic> json) => _$PromotionPlanDtoFromJson(json);
}
