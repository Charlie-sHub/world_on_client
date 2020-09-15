// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    id: json['id'] as int,
    name: json['name'] as String,
    username: json['username'] as String,
    password: json['password'] as String,
    email: json['email'] as String,
    birthday: json['birthday'] as String,
    description: json['description'] as String,
    imageURL: json['imageURL'] as String,
    level: json['level'] as int,
    experiencePoints: json['experiencePoints'] as int,
    privacy: json['privacy'] as bool,
    adminPowers: json['adminPowers'] as bool,
    enabled: json['enabled'] as bool,
    lastLogin: json['lastLogin'] as String,
    creationDate: json['creationDate'] as String,
    modificationDate: json['modificationDate'] as String,
    options: json['options'] == null ? null : OptionsDto.fromJson(json['options'] as Map<String, dynamic>),
    blockedUsersIds: (json['blockedUsersIds'] as List)?.map((e) => e as int)?.toSet(),
    followedUsersIds: (json['followedUsersIds'] as List)?.map((e) => e as int)?.toSet(),
    interestsIds: (json['interestsIds'] as List)?.map((e) => e as int)?.toSet(),
    achievementsIds: (json['achievementsIds'] as List)?.map((e) => e as int)?.toSet(),
    experiencesDoneIds: (json['experiencesDoneIds'] as List)?.map((e) => e as int)?.toSet(),
    experiencesLikedIds: (json['experiencesLikedIds'] as List)?.map((e) => e as int)?.toSet(),
    experiencesToDoIds: (json['experiencesToDoIds'] as List)?.map((e) => e as int)?.toSet(),
    devices: (json['devices'] as List)?.map((e) => e == null ? null : DeviceDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    systems: (json['systems'] as List)?.map((e) => e == null ? null : SystemDto.fromJson(e as Map<String, dynamic>))?.toSet(),
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
  <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'username': instance.username,
    'password': instance.password,
    'email': instance.email,
    'birthday': instance.birthday,
    'description': instance.description,
    'imageURL': instance.imageURL,
    'level': instance.level,
    'experiencePoints': instance.experiencePoints,
      'privacy': instance.privacy,
      'adminPowers': instance.adminPowers,
      'enabled': instance.enabled,
      'lastLogin': instance.lastLogin,
      'creationDate': instance.creationDate,
      'modificationDate': instance.modificationDate,
      'options': instance.options,
      'blockedUsersIds': instance.blockedUsersIds?.toList(),
      'followedUsersIds': instance.followedUsersIds?.toList(),
      'interestsIds': instance.interestsIds?.toList(),
      'achievementsIds': instance.achievementsIds?.toList(),
      'experiencesDoneIds': instance.experiencesDoneIds?.toList(),
      'experiencesLikedIds': instance.experiencesLikedIds?.toList(),
      'experiencesToDoIds': instance.experiencesToDoIds?.toList(),
      'devices': instance.devices?.toList(),
      'systems': instance.systems?.toList(),
    };
