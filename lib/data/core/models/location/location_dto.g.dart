// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationDto _$$_LocationDtoFromJson(Map<String, dynamic> json) =>
    _$_LocationDto(
      id: json['id'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      postalCode: json['postalCode'] as String,
      experiences: (json['experiences'] as List<dynamic>)
          .map((e) => ExperienceDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$$_LocationDtoToJson(_$_LocationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'country': instance.country,
      'postalCode': instance.postalCode,
      'experiences': instance.experiences.map((e) => e.toJson()).toList(),
    };
