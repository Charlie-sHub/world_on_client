import 'package:kt_dart/collection.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';

ObjectiveSet getValidObjectiveSet() {
  return ObjectiveSet(
    KtSet.of(
      Objective.empty().copyWith(
        id: 1,
        description: EntityDescription("Testing"),
        coordinates: Coordinates(
          latitude: Latitude(0),
          longitude: Longitude(0),
        ),
      ),
      Objective.empty().copyWith(
        id: 2,
        description: EntityDescription("Testing"),
        coordinates: Coordinates(
          latitude: Latitude(1),
          longitude: Longitude(1),
        ),
      ),
    ),
  );
}
