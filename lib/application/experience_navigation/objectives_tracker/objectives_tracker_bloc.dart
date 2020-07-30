import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
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
    // Maybe it's unnecessary, but this way i make sure the list can only change where i want it to change
    final mutableKtList = state.objectivesToDo.toMutableList();
    mutableKtList.remove(event.objective);
    yield state.copyWith(
      objectivesToDo: mutableKtList.toList(),
      isFinished: mutableKtList.isEmpty(),
    );
  }

  Stream<ObjectivesTrackerState> onInitialized(_Initialized event) async* {
    yield state.copyWith(objectivesToDo: event.objectiveSet.getOrCrash().toList());
  }
}
