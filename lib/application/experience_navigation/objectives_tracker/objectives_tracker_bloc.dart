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
      initialized: _onInitialized,
      objectiveAccomplished: _onObjectiveAccomplished,
    );
  }

  Stream<ObjectivesTrackerState> _onObjectiveAccomplished(_ObjectiveAccomplished event) async* {
    // Maybe it's unnecessary, but this way i make sure the list can _only change where i want it to change
    final _mutableKtList = state.objectivesToDo.toMutableList();
    _mutableKtList.remove(event.objective);
    yield state.copyWith(
      objectivesToDo: _mutableKtList.toList(),
      isFinished: _mutableKtList.isEmpty(),
    );
  }

  Stream<ObjectivesTrackerState> _onInitialized(_Initialized event) async* {
    yield state.copyWith(objectivesToDo: event.objectiveSet.getOrCrash().toList());
  }
}
