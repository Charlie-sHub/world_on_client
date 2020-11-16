import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/models/coordinates/coordinates_dto.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'objective_dto.freezed.dart';
part 'objective_dto.g.dart';

@freezed
abstract class ObjectiveDto implements _$ObjectiveDto {
  const ObjectiveDto._();

  const factory ObjectiveDto({
    String id,
    @required String description,
    @required CoordinatesDto coordinates,
    @required String imageURL,
  }) = _ObjectiveDto;

  factory ObjectiveDto.fromDomain(Objective objective) => ObjectiveDto(
        id: objective.id.getOrCrash(),
        description: objective.description.getOrCrash(),
        coordinates: CoordinatesDto.fromDomain(objective.coordinates),
        imageURL: objective.imageURL,
      );

  Objective toDomain() => Objective(
        id: UniqueId.fromUniqueString(id),
        description: EntityDescription(description),
        coordinates: coordinates.toDomain(),
        imageURL: imageURL,
        imageFile: dartz.none(),
      );

  factory ObjectiveDto.fromJson(Map<String, dynamic> json) => _$ObjectiveDtoFromJson(json);

  factory ObjectiveDto.fromFirestore(DocumentSnapshot document) => ObjectiveDto.fromJson(
        document.data(),
      ).copyWith(
        id: document.id,
      );
}
