import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';

/// "Converts" a [Set] of [Objective]s into a [Map].
///
/// A [Map] where the ids are the keys and a bool keeping track of when they're accomplished.
class FillObjectiveTracker implements UseCase<Map<int, bool>, Params> {
  @override
  Either<Failure, Map<int, bool>> call(Params params) {
    final Map<int, bool> objectiveTracker = {};
    for (final objective in params.objectiveSet.getOrCrash().iter) {
      if (objective.id != null) {
        objectiveTracker[objective.id] = false;
      } else {
        return left(const Failure.coreDomain(CoreDomainFailure.domainLayerError(errorString: "Null id in the objective tracker")));
      }
    }
    return right(objectiveTracker);
  }
}

class Params {
  final ObjectiveSet objectiveSet;

  Params({@required this.objectiveSet});
}
