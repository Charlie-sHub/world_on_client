import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/experience_management/use_case/create_experience.dart';

/// Takes the data to create a new Objectives, creates it, adds it to its [Set] of objectives and returns it
///
/// It's supposed to be called right before the [CreateExperience] use-case, once for every [ObjectiveCreationWidget] opened with valid data
/// that way there's no need to create business logic regarding the deletion or edition of objectives
class CreateObjectives implements UseCase<Set<Objective>, Params> {
  final Set<Objective> objectives = {};

  @override
  Either<Failure, Set<Objective>> call(Params params) {
    final objective = Objective(
      id: null,
      description: params.description,
      coordinates: params.coordinates,
      imageName: params.imageName,
    );
    objectives.add(objective);
    // There's no need to check the validity of the values here at this use-case will only be called after they're validated
    return right(objectives);
  }
}

class Params {
  final EntityDescription description;
  final Coordinates coordinates;
  final String imageName;

  Params({
    @required this.description,
    @required this.coordinates,
    @required this.imageName,
  });
}
