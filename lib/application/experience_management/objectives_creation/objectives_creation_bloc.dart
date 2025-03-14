import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';

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
      reorderedList: _onReorderedList,
      initialized: _onInitialized,
    );
  }

  Stream<ObjectivesCreationState> _onInitialized(_Initialized event) async* {
    yield event.objectiveListOption.fold(
      () => state,
      (objectiveList) => state.copyWith(
        objectivesCreated: objectiveList.getOrCrash(),
      ),
    );
  }

  Stream<ObjectivesCreationState> _onReorderedList(_ReorderedList event) async* {
    yield state.copyWith(
      objectivesCreated: event.reorderedList.toImmutableList(),
    );
  }

  Stream<ObjectivesCreationState> _onRemovedObjective(_RemovedObjective event) async* {
    yield state.copyWith(
      objectivesCreated: state.objectivesCreated.minusElement(event.objective),
    );
  }

  Stream<ObjectivesCreationState> _onAddedObjective(_AddedObjective event) async* {
    if (state.objectivesCreated.size < ObjectiveList.maxLength) {
      yield state.copyWith(
        objectivesCreated: state.objectivesCreated.plusElement(event.objective),
      );
    }
  }
}
