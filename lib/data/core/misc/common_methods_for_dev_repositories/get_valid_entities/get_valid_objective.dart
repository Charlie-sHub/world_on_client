import 'package:dartz/dartz.dart';
import 'package:worldon/core/assets.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

Objective getValidObjective() {
  return Objective(
    id: 1,
    description: EntityDescription("Sed tristique est nibh, ut imperdiet ligula dapibus accumsan."),
    coordinates: Coordinates(
      latitude: Latitude(40.416501),
      longitude: Longitude(-3.705086),
    ),
    imageURL: Assets.objectivePlaceholder,
    imageFile: none(),
  );
}
