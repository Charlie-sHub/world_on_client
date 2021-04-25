import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/misc/server_timestamp_converter.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan_code.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'promotion_plan_dto.freezed.dart';d.dart';

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
  }) = _PromotionPlan;

  factory PromotionPlanDto.fromDomain(PromotionPlan promotionPlan) => PromotionPlanDto(
        id: promotionPlan.id.getOrCrash(),
        name: promotionPlan.name.getOrCrash(),
        description: promotionPlan.description.getOrCrash(),
        code: promotionPlan.code,
        valueInEuros: promotionPlan.valueInEuros,
        boughtDate: promotionPlan.boughtDate,
      );

  PromotionPlan toDomain() => PromotionPlan(
        id: UniqueId.fromUniqueString(id),
        name: Name(name),
        description: EntityDescription(description),
        code: code,
        valueInEuros: valueInEuros,
        boughtDate: boughtDate,
      );

  factory PromotionPlanDto.fromJson(Map<String, dynamic> json) => _$PromotionPlanDtoFromJson(json);

  factory PromotionPlanDto.fromFirestore(DocumentSnapshot document) => PromotionPlanDto.fromJson(
        document.data()!,
      ).copyWith(
        id: document.id,
      );
}
