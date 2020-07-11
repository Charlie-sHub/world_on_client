import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/models/coordinates/coordinates_dto.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';

part 'objective_dto.freezed.dart';

part 'objective_dto.g.dart';

@freezed
abstract class ObjectiveDto implements _$ObjectiveDto {
  const ObjectiveDto._();

  const factory ObjectiveDto({
    @required int id,
    @required String description,
    @required CoordinatesDto coordinates,
    @required String imageName,
  }) = _ObjectiveDto;

  factory ObjectiveDto.fromDomain(Objective objective) => ObjectiveDto(
        id: objective.id,
        description: objective.description.getOrCrash(),
        coordinates: CoordinatesDto.fromDomain(objective.coordinates),
        imageName: objective.imageName,
      );

  Objective toDomain() => Objective(
        id: id,
        description: EntityDescription(description),
        coordinates: coordinates.toDomain(),
        imageName: imageName,
      );

  factory ObjectiveDto.fromJson(Map<String, dynamic> json) => _$ObjectiveDtoFromJson(json);
}
