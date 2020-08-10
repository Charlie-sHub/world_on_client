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
      addedObjective: onAddedObjective,
      removedObjective: onRemovedObjective,
    );
  }

  Stream<ObjectivesCreationState> onRemovedObjective(_RemovedObjective event) async* {
    final _mutableKtSet = state.objectivesCreated.toMutableSet();
    _mutableKtSet.remove(event.objective);
    yield state.copyWith(
      objectivesCreated: _mutableKtSet.toSet(),
    );
  }

  Stream<ObjectivesCreationState> onAddedObjective(_AddedObjective event) async* {
    if (state.objectivesCreated.size < ObjectiveSet.maxLength) {
      final _mutableKtSet = state.objectivesCreated.toMutableSet();
      _mutableKtSet.add(event.objective);
      yield state.copyWith(
        objectivesCreated: _mutableKtSet.toSet(),
      );
    }
  }
}
