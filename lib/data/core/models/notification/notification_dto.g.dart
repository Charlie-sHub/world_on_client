// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDto _$_$_NotificationDtoFromJson(Map<String, dynamic> json) {
  return _$_NotificationDto(
    senderId: json['senderId'] as String,
    receiverId: json['receiverId'] as String,
    description: json['description'] as String,
    seen: json['seen'] as bool,
    creationDate: json['creationDate'] as String,
    type: _$enumDecodeNullable(_$NotificationTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$_$_NotificationDtoToJson(_$_NotificationDto instance) => <String, dynamic>{
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'description': instance.description,
      'seen': instance.seen,
      'creationDate': instance.creationDate,
      'type': _$NotificationTypeEnumMap[instance.type],
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
  
  final value = enumValues.entries
    .singleWhere((e) => e.value == source, orElse: () => null)
    ?.key;
  
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

const _$NotificationTypeEnumMap = {
  NotificationType.follow: 'follow',
  NotificationType.unfollow: 'unfollow',
  NotificationType.block: 'block',
  NotificationType.unblock: 'unblock',
};
