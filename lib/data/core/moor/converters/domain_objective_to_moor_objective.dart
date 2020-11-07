import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';

MoorObjectivesCompanion domainObjectiveToMoorObjective(String experienceId, Objective objective) => MoorObjectivesCompanion.insert(
      id: objective.id.getOrCrash(),
      experienceId: experienceId,
      description: objective.description.getOrCrash(),
      latitude: objective.coordinates.latitude.getOrCrash(),
      longitude: objective.coordinates.longitude.getOrCrash(),
      imageURL: objective.imageURL,
    );
