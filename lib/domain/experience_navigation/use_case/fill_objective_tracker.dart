import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/objective.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

/// "Converts" a [Set] of [Objective]s into a [Map].
///
/// A [Map] where the ids are the keys and a bool keeping track of when they're accomplished.
class FillObjectiveTracker implements UseCase<Map<int, bool>, Params> {
  @override
  Either<Failure, Map<int, bool>> call(Params params) {
    try {
      final Map<int, bool> objectiveTracker = {};
      for (final objective in params.objectiveSet) {
        if (objective.id != null) {
          objectiveTracker[objective.id] = false;
        } else {
          throw Exception();
        }
      }
      return right(objectiveTracker);
    } on Exception catch (e) {
      return left(const CoreFailure.unknownDomainLayerError());
    }
  }
}

class Params {
  final Set<Objective> objectiveSet;

  Params({this.objectiveSet});
}
