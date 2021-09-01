// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    id: json['id'] as String,
    name: json['name'] as String,
    username: json['username'] as String,
    password: json['password'] as String,
    email: json['email'] as String,
    birthday: const ServerTimestampConverter()
        .fromJson(json['birthday'] as Timestamp),
    description: json['description'] as String,
    imageURL: json['imageURL'] as String,
    level: json['level'] as int,
    experiencePoints: json['experiencePoints'] as int,
    privacy: json['privacy'] as bool,
    adminPowers: json['adminPowers'] as bool,
    enabled: json['enabled'] as bool,
    lastLogin: const ServerTimestampConverter()
        .fromJson(json['lastLogin'] as Timestamp),
    creationDate: const ServerTimestampConverter()
        .fromJson(json['creationDate'] as Timestamp),
    modificationDate: const ServerTimestampConverter()
        .fromJson(json['modificationDate'] as Timestamp),
    options: OptionsDto.fromJson(json['options'] as Map<String, dynamic>),
    blockedUsersIds: (json['blockedUsersIds'] as List<dynamic>)
        .map((e) => e as String)
        .toSet(),
    followedUsersIds: (json['followedUsersIds'] as List<dynamic>)
        .map((e) => e as String)
        .toSet(),
    interestsIds:
        (json['interestsIds'] as List<dynamic>).map((e) => e as String).toSet(),
    achievementsIds: (json['achievementsIds'] as List<dynamic>)
        .map((e) => e as String)
        .toSet(),
    experiencesDoneIds: (json['experiencesDoneIds'] as List<dynamic>)
        .map((e) => e as String)
        .toSet(),
    experiencesLikedIds: (json['experiencesLikedIds'] as List<dynamic>)
        .map((e) => e as String)
        .toSet(),
    experiencesToDoIds: (json['experiencesToDoIds'] as List<dynamic>)
        .map((e) => e as String)
        .toSet(),
    devices: (json['devices'] as List<dynamic>)
        .map((e) => DeviceDto.fromJson(e as Map<String, dynamic>))
        .toSet(),
    systems: (json['systems'] as List<dynamic>)
        .map((e) => SystemDto.fromJson(e as Map<String, dynamic>))
        .toSet(),
    items: (json['items'] as List<dynamic>)
        .map((e) => ItemDto.fromJson(e as Map<String, dynamic>))
        .toSet(),
    coins: json['coins'] as int,
    followersAmount: json['followersAmount'] as int,
    promotionPlan: PromotionPlanDto.fromJson(
        json['promotionPlan'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'birthday': const ServerTimestampConverter().toJson(instance.birthday),
      'description': instance.description,
      'imageURL': instance.imageURL,
      'level': instance.level,
      'experiencePoints': instance.experiencePoints,
      'privacy': instance.privacy,
      'adminPowers': instance.adminPowers,
      'enabled': instance.enabled,
      'lastLogin': const ServerTimestampConverter().toJson(instance.lastLogin),
      'creationDate':
          const ServerTimestampConverter().toJson(instance.creationDate),
      'modificationDate':
          const ServerTimestampConverter().toJson(instance.modificationDate),
      'options': instance.options.toJson(),
      'blockedUsersIds': instance.blockedUsersIds.toList(),
      'followedUsersIds': instance.followedUsersIds.toList(),
      'interestsIds': instance.interestsIds.toList(),
      'achievementsIds': instance.achievementsIds.toList(),
      'experiencesDoneIds': instance.experiencesDoneIds.toList(),
      'experiencesLikedIds': instance.experiencesLikedIds.toList(),
      'experiencesToDoIds': instance.experiencesToDoIds.toList(),
      'devices': instance.devices.map((e) => e.toJson()).toList(),
      'systems': instance.systems.map((e) => e.toJson()).toList(),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'coins': instance.coins,
      'followersAmount': instance.followersAmount,
      'promotionPlan': instance.promotionPlan.toJson(),
    };
