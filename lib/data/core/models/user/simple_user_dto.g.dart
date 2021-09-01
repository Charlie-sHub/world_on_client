// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SimpleUserDto _$_$_SimpleUserDtoFromJson(Map<String, dynamic> json) {
  return _$_SimpleUserDto(
    id: json['id'] as String,
    name: json['name'] as String,
    username: json['username'] as String,
    imageURL: json['imageURL'] as String,
    level: json['level'] as int,
    experiencePoints: json['experiencePoints'] as int,
    adminPowers: json['adminPowers'] as bool,
    followersAmount: json['followersAmount'] as int,
  );
}

Map<String, dynamic> _$_$_SimpleUserDtoToJson(_$_SimpleUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'imageURL': instance.imageURL,
      'level': instance.level,
      'experiencePoints': instance.experiencePoints,
      'adminPowers': instance.adminPowers,
      'followersAmount': instance.followersAmount,
    };
