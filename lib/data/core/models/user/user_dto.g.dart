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
    blockedUsers: (json['blockedUsers'] as List)?.map((e) => e == null ? null : UserDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    followedUsers: (json['followedUsers'] as List)?.map((e) => e == null ? null : UserDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    devices: (json['devices'] as List)?.map((e) => e == null ? null : DeviceDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    systems: (json['systems'] as List)?.map((e) => e == null ? null : SystemDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    interests: (json['interests'] as List)?.map((e) => e == null ? null : TagDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    achievements: (json['achievements'] as List)?.map((e) => e == null ? null : AchievementDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    experiencesDone: (json['experiencesDone'] as List)?.map((e) => e == null ? null : ExperienceDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    experiencesLiked: (json['experiencesLiked'] as List)?.map((e) => e == null ? null : ExperienceDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    experiencesToDo: (json['experiencesToDo'] as List)?.map((e) => e == null ? null : ExperienceDto.fromJson(e as Map<String, dynamic>))?.toSet(),
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
      'blockedUsers': instance.blockedUsers?.toList(),
      'followedUsers': instance.followedUsers?.toList(),
      'devices': instance.devices?.toList(),
      'systems': instance.systems?.toList(),
      'interests': instance.interests?.toList(),
      'achievements': instance.achievements?.toList(),
      'experiencesDone': instance.experiencesDone?.toList(),
      'experiencesLiked': instance.experiencesLiked?.toList(),
      'experiencesToDo': instance.experiencesToDo?.toList(),
    };
