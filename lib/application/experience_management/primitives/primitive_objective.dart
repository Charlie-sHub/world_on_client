import 'dart:io';

import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'primitive_objective.freezed.dart';

@Deprecated("This class is not necessary for the current way to create objectives")
@freezed
class PrimitiveObjective with _$PrimitiveObjective {
  const PrimitiveObjective._();

  const factory PrimitiveObjective({
    required UniqueId id,
    required String description,
    required double latitude,
    required double longitude,
    required File? imageFile,
  }) = _PrimitiveObjective;

  factory PrimitiveObjective.empty() => PrimitiveObjective(
        id: UniqueId(),
        description: "",
        latitude: 0,
        longitude: 0,
        imageFile: null,
      );

  factory PrimitiveObjective.fromDomain(Objective objective) => PrimitiveObjective(
        id: objective.id,
        description: objective.description.getOrCrash(),
        latitude: objective.coordinates.latitude.getOrCrash(),
        longitude: objective.coordinates.longitude.getOrCrash(),
        imageFile: objective.imageFile.fold(
          () {},
          dartz.id,
        ),
      );

  Objective toDomain() => Objective(
        id: id,
        description: EntityDescription(description),
        coordinates: Coordinates(
          latitude: Latitude(latitude),
          longitude: Longitude(longitude),
        ),
        imageURL: "",
        imageFile: dartz.some(imageFile!),
      );
}
