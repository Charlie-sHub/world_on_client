import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

/// Updates the objective tracker
class AccomplishObjective implements UseCase<bool, Params> {
  final Map<int, bool> objectiveTracker;

  AccomplishObjective(this.objectiveTracker);

  /// Takes an objective id and changes to true the corresponding value in the tracker, then checks if there are any false values left and returns that
  @override
  Either<Failure, bool> call(Params params) {
    try {
      bool trackerFilled;
      if (params.objectiveId != null) {
        objectiveTracker[params.objectiveId] = true;
        trackerFilled = !objectiveTracker.containsValue(false);
      } else {
        throw Exception();
      }
      return right(trackerFilled);
    } on Exception catch (e) {
      return left(const CoreFailure.unknownDomainLayerError());
    }
  }
}

class Params {
  final int objectiveId;

  Params({this.objectiveId});
}
