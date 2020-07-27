import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';

part 'objectives_tracker_bloc.freezed.dart';
part 'objectives_tracker_event.dart';
part 'objectives_tracker_state.dart';

@injectable
class ObjectivesTrackerBloc extends Bloc<ObjectivesTrackerEvent, ObjectivesTrackerState> {
  ObjectivesTrackerBloc() : super(ObjectivesTrackerState.initial());

  @override
  Stream<ObjectivesTrackerState> mapEventToState(ObjectivesTrackerEvent event) async* {
    yield* event.map(
      initialized: onInitialized,
      objectiveAccomplished: onObjectiveAccomplished,
    );
  }

  Stream<ObjectivesTrackerState> onObjectiveAccomplished(_ObjectiveAccomplished event) async* {
    state.objectiveTracker[event.objective] = true;
    yield state.copyWith(
      isFinished: !state.objectiveTracker.containsValue(false),
    );
  }

  Stream<ObjectivesTrackerState> onInitialized(_Initialized event) async* {
    final objectiveMap = <Objective, bool>{};
    event.objectiveSet.getOrCrash().asSet().forEach(
          (objective) => objectiveMap[objective] = false,
        );
    yield state.copyWith(objectiveTracker: objectiveMap);
  }
}
