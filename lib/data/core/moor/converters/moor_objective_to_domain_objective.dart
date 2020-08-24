import 'package:dartz/dartz.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

Objective moorObjectiveToDomainObjective(MoorObjective _moorObjective) => Objective(
      id: _moorObjective.id,
      description: EntityDescription(_moorObjective.description),
      coordinates: Coordinates(
        latitude: Latitude(_moorObjective.latitude),
        longitude: Longitude(_moorObjective.longitude),
      ),
      imageURL: _moorObjective.imageURL,
      imageFile: none(),
    );
