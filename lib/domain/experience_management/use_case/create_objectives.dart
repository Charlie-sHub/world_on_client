import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/experience_management/use_case/create_experience.dart';

/// Takes the data to create a new Objectives, creates it, adds it to its [Set] of objectives and returns it
///
/// It's supposed to be called right before the [CreateExperience] use-case, once for every [ObjectiveCreationWidget] opened with valid data
/// that way there's no need to create business logic regarding the deletion or edition of objectives
@Deprecated("Probably useless, will use Reso's method")
@LazySingleton(env: [Environment.dev, Environment.prod])
class CreateObjectives implements UseCase<ObjectiveSet, Params> {
  final KtMutableSet<Objective> objectives = KtMutableSet.empty();

  @override
  Either<Failure, ObjectiveSet> call(Params params) {
    final objective = Objective.empty().copyWith(
      id: null,
      description: params.description,
      coordinates: params.coordinates,
      imageURL: params.imageURL,
      imageFile: some(params.imageFile),
    );
    objectives.add(objective);
    return right(ObjectiveSet(objectives));
  }
}

class Params {
  final EntityDescription description;
  final Coordinates coordinates;
  final String imageURL;
  final File imageFile;

  Params({
    @required this.description,
    @required this.coordinates,
    @required this.imageURL,
    @required this.imageFile,
  });
}
