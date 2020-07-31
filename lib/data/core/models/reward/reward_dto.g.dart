// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RewardDto _$_$_RewardDtoFromJson(Map<String, dynamic> json) {
  return _$_RewardDto(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    imageURL: json['imageURL'] as String,
    imageFile: (json['imageFile'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$_$_RewardDtoToJson(_$_RewardDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageURL': instance.imageURL,
    'imageFile': instance.imageFile,
    };
