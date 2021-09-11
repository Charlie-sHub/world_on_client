// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDto _$$_NotificationDtoFromJson(Map<String, dynamic> json) =>
    _$_NotificationDto(
      id: json['id'] as String,
      sender: SimpleUserDto.fromJson(json['sender'] as Map<String, dynamic>),
      receiverId: json['receiverId'] as String,
      description: json['description'] as String,
      seen: json['seen'] as bool,
      creationDate: const ServerTimestampConverter()
          .fromJson(json['creationDate'] as Timestamp),
      type: _$enumDecode(_$NotificationTypeEnumMap, json['type']),
      experience: json['experience'] == null
          ? null
          : ExperienceDto.fromJson(json['experience'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NotificationDtoToJson(_$_NotificationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender.toJson(),
      'receiverId': instance.receiverId,
      'description': instance.description,
      'seen': instance.seen,
      'creationDate':
          const ServerTimestampConverter().toJson(instance.creationDate),
      'type': _$NotificationTypeEnumMap[instance.type],
      'experience': instance.experience?.toJson(),
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

const _$NotificationTypeEnumMap = {
  NotificationType.follow: 'follow',
  NotificationType.unfollow: 'unfollow',
  NotificationType.block: 'block',
  NotificationType.unblock: 'unblock',
  NotificationType.share: 'share',
};
