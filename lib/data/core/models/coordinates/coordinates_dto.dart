import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

part 'coordinates_dto.freezed.dart';

part 'coordinates_dto.g.dart';

@freezed
abstract class CoordinatesDto implements _$CoordinatesDto {
  const CoordinatesDto._();

  const factory CoordinatesDto({
    @required double latitude,
    @required double longitude,
  }) = _CoordinatesDto;

  factory CoordinatesDto.fromDomain(Coordinates coordinates) => CoordinatesDto(
        latitude: coordinates.latitude.getOrCrash(),
        longitude: coordinates.longitude.getOrCrash(),
      );

  Coordinates toDomain() => Coordinates(
        latitude: Latitude(latitude),
        longitude: Longitude(longitude),
      );

  factory CoordinatesDto.fromJson(Map<String, dynamic> json) => _$CoordinatesDtoFromJson(json);
}
