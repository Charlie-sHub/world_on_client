// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_plan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromotionPlan _$_$_PromotionPlanFromJson(Map<String, dynamic> json) {
  return _$_PromotionPlan(
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    code: _$enumDecode(_$PromotionPlanCodeEnumMap, json['code']),
    valueInEuros: json['valueInEuros'] as int,
    boughtDate: const ServerTimestampConverter()
        .fromJson(json['boughtDate'] as Timestamp),
    timesSeen: json['timesSeen'] as int,
  );
}

Map<String, dynamic> _$_$_PromotionPlanToJson(_$_PromotionPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'code': _$PromotionPlanCodeEnumMap[instance.code],
      'valueInEuros': instance.valueInEuros,
      'boughtDate':
          const ServerTimestampConverter().toJson(instance.boughtDate),
      'timesSeen': instance.timesSeen,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$PromotionPlanCodeEnumMap = {
  PromotionPlanCode.none: 'none',
  PromotionPlanCode.weekLongPromotion: 'weekLongPromotion',
  PromotionPlanCode.monthLongPromotion: 'monthLongPromotion',
  PromotionPlanCode.seasonLongPromotion: 'seasonLongPromotion',
  PromotionPlanCode.yearLongPromotion: 'yearLongPromotion',
};
