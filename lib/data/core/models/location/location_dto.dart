import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/domain/core/entities/location/location.dart';

part 'location_dto.freezed.dart';

part 'location_dto.g.dart';

@freezed
abstract class LocationDto implements _$LocationDto {
  const LocationDto._();

  const factory LocationDto({
    @required int id,
    @required String city,
    @required String country,
    @required String postalCode,
    @required Set<ExperienceDto> experiences,
  }) = _LocationDto;

  factory LocationDto.fromDomain(Location location) => LocationDto(
        id: location.id,
        city: location.city,
        country: location.country,
        postalCode: location.postalCode,
        experiences: location.experiences.map((experience) => ExperienceDto.fromDomain(experience)).toSet(),
      );

  Location toDomain() => Location(
        id: id,
        city: city,
        country: country,
        postalCode: postalCode,
        experiences: experiences.map((experienceDto) => experienceDto.toDomain()).toSet(),
      );

  factory LocationDto.fromJson(Map<String, dynamic> json) => _$LocationDtoFromJson(json);
}
