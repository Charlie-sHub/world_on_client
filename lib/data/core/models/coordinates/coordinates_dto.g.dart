// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoordinatesDto _$_$_CoordinatesDtoFromJson(Map<String, dynamic> json) {
  return _$_CoordinatesDto(
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_CoordinatesDtoToJson(_$_CoordinatesDto instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
