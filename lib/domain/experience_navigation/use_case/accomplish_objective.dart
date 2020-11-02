import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

/// Updates the [Objective] tracker
@Deprecated("Unnecessarily bulky, just use the ObjectivesTrackerBloc")
class AccomplishObjective implements UseCase<bool, Params> {
  final Map<int, bool> objectiveTracker;

  AccomplishObjective(this.objectiveTracker);

  /// Takes an objective id and changes to true the corresponding value in the tracker, then checks if there are any false values left and returns that
  @override
  Either<Failure, bool> call(Params params) {
    bool trackerFilled;
    if (params.objectiveId != null) {
      objectiveTracker[params.objectiveId] = true;
      trackerFilled = !objectiveTracker.containsValue(false);
    } else {
      return left(const Failure.coreDomain(CoreDomainFailure.domainLayerError(errorString: "Null id in the objective tracker")));
    }
    return right(trackerFilled);
  }
}

class Params {
  final int objectiveId;

  Params({@required this.objectiveId});
}
