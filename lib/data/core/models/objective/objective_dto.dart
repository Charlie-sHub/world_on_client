import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/models/coordinates/coordinates_dto.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'objective_dto.freezed.dart';
part 'objective_dto.g.dart';

@freezed
class ObjectiveDto with _$ObjectiveDto {
  const ObjectiveDto._();

  const factory ObjectiveDto({
    required String id,
    required String description,
    required CoordinatesDto coordinates,
    required String imageURL,
    String? title,
  }) = _ObjectiveDto;

  factory ObjectiveDto.fromDomain(Objective objective) => ObjectiveDto(
        id: objective.id.getOrCrash(),
        description: objective.description.getOrCrash(),
        coordinates: CoordinatesDto.fromDomain(objective.coordinates),
        imageURL: objective.imageURL,
        title: objective.title?.getOrCrash(),
      );

  Objective toDomain() => Objective(
        id: UniqueId.fromUniqueString(id),
        description: EntityDescription(description),
        title: title != null ? Name(title!) : null,
        coordinates: coordinates.toDomain(),
        imageURL: imageURL,
        imageFile: dartz.none(),
      );

  factory ObjectiveDto.fromJson(Map<String, dynamic> json) =>
      _$ObjectiveDtoFromJson(json);
}
