import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';

part 'objectives_creation_bloc.freezed.dart';
part 'objectives_creation_event.dart';
part 'objectives_creation_state.dart';

@injectable
class ObjectivesCreationBloc
    extends Bloc<ObjectivesCreationEvent, ObjectivesCreationState> {
  ObjectivesCreationBloc() : super(ObjectivesCreationState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_AddedObjective>(_onAddedObjective);
    on<_RemovedObjective>(_onRemovedObjective);
    on<_ReorderedList>(_onReorderedList);
  }

  void _onInitialized(_Initialized event, Emitter emit) {
    emit(
      event.objectiveListOption.fold(
        () => state,
        (objectiveList) => state.copyWith(
          objectivesCreated: objectiveList.getOrCrash(),
        ),
      ),
    );
  }

  void _onReorderedList(_ReorderedList event, Emitter emit) {
    emit(
      state.copyWith(
        objectivesCreated: event.reorderedList.toImmutableList(),
      ),
    );
  }

  void _onRemovedObjective(_RemovedObjective event, Emitter emit) {
    emit(
      state.copyWith(
        objectivesCreated: state.objectivesCreated.minusElement(
          event.objective,
        ),
      ),
    );
  }

  void _onAddedObjective(_AddedObjective event, Emitter emit) {
    if (state.objectivesCreated.size < ObjectiveList.maxLength) {
      emit(
        state.copyWith(
          objectivesCreated: state.objectivesCreated.plusElement(
            event.objective,
          ),
        ),
      );
    }
  }
}
