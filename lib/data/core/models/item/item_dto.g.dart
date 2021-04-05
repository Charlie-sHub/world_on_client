// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$_$_ItemFromJson(Map<String, dynamic> json) {
  return _$_Item(
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    code: _$enumDecodeNullable(_$ItemCodeEnumMap, json['code']),
    value: json['value'] as int,
    timeLimitInDays: json['timeLimitInDays'] as int,
    imageURL: json['imageURL'] as String,
    boughtDate: const ServerTimestampConverter().fromJson(json['boughtDate'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'code': _$ItemCodeEnumMap[instance.code],
      'value': instance.value,
      'timeLimitInDays': instance.timeLimitInDays,
      'imageURL': instance.imageURL,
      'boughtDate': const ServerTimestampConverter().toJson(instance.boughtDate),
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries.singleWhere((e) => e.value == source, orElse: () => null)?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ItemCodeEnumMap = {
  ItemCode.none: 'none',
  ItemCode.expBoost: 'expBoost',
};
