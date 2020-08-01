import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

part 'primitive_objective.freezed.dart';

@freezed
abstract class PrimitiveObjective implements _$PrimitiveObjective {
  const PrimitiveObjective._();

  const factory PrimitiveObjective({
    @required String description,
    @required double latitude,
    @required double longitude,
    @required File imageFile,
  }) = _PrimitiveObjective;

  factory PrimitiveObjective.empty() => PrimitiveObjective(
        description: "",
        latitude: 0,
        longitude: 0,
        imageFile: null,
      );

  factory PrimitiveObjective.fromDomain(Objective objective) => PrimitiveObjective(
        description: objective.description.getOrCrash(),
        latitude: objective.coordinates.latitude.getOrCrash(),
        longitude: objective.coordinates.longitude.getOrCrash(),
        imageFile: objective.imageFile.fold(
          () => null,
          id,
        ),
      );

  Objective toDomain() => Objective(
    description: EntityDescription(description),
    coordinates: Coordinates(
      latitude: Latitude(latitude),
      longitude: Longitude(longitude),
    ),
    imageURL: "",
    imageFile: some(imageFile),
  );
}
