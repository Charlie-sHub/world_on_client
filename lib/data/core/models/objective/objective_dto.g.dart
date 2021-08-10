// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objective_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ObjectiveDto _$_$_ObjectiveDtoFromJson(Map<String, dynamic> json) {
  return _$_ObjectiveDto(
    id: json['id'] as String,
    description: json['description'] as String,
    coordinates:
        CoordinatesDto.fromJson(json['coordinates'] as Map<String, dynamic>),
    imageURL: json['imageURL'] as String,
  );
}

Map<String, dynamic> _$_$_ObjectiveDtoToJson(_$_ObjectiveDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'coordinates': instance.coordinates.toJson(),
      'imageURL': instance.imageURL,
    };
