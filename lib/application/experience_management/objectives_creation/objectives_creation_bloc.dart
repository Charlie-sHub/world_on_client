import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';

part 'objectives_creation_bloc.freezed.dart';
part 'objectives_creation_event.dart';
part 'objectives_creation_state.dart';

@injectable
class ObjectivesCreationBloc extends Bloc<ObjectivesCreationEvent, ObjectivesCreationState> {
  ObjectivesCreationBloc() : super(ObjectivesCreationState.initial());

  @override
  Stream<ObjectivesCreationState> mapEventToState(ObjectivesCreationEvent event) async* {
    yield* event.map(
      addedObjective: _onAddedObjective,
      removedObjective: _onRemovedObjective,
    );
  }

  Stream<ObjectivesCreationState> _onRemovedObjective(_RemovedObjective event) async* {
    yield state.copyWith(
      objectivesCreated: state.objectivesCreated.minusElement(event.objective).toSet(),
    );
  }

  Stream<ObjectivesCreationState> _onAddedObjective(_AddedObjective event) async* {
    if (state.objectivesCreated.size < ObjectiveSet.maxLength) {
      yield state.copyWith(
        objectivesCreated: state.objectivesCreated.plusElement(event.objective).toSet(),
      );
    }
  }
}
