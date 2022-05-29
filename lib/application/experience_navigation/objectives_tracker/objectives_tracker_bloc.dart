import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_navigation/use_case/accomplish_objective.dart'
    as accomplish_objective;
import 'package:worldon/domain/experience_navigation/use_case/save_user_progress.dart'
    as save_user_progress;
import 'package:worldon/domain/experience_navigation/use_case/unaccomplish_objective.dart'
    as unaccomplish_objective;
import 'package:worldon/injection.dart';

part 'objectives_tracker_bloc.freezed.dart';
part 'objectives_tracker_event.dart';
part 'objectives_tracker_state.dart';

@injectable
class ObjectivesTrackerBloc
    extends Bloc<ObjectivesTrackerEvent, ObjectivesTrackerState> {
  ObjectivesTrackerBloc() : super(ObjectivesTrackerState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_ObjectiveAccomplished>(_onObjectiveAccomplished);
    on<_ObjectiveUnaccomplished>(_onObjectiveUnaccomplished);
  }

  void _onObjectiveUnaccomplished(
    _ObjectiveUnaccomplished event,
    Emitter emit,
  ) {
    final _objectivesLeft = state.objectivesToDo.plusElement(event.objective);
    getIt<unaccomplish_objective.UnAccomplishObjective>()(
      unaccomplish_objective.Params(
        objective: event.objective,
        experienceId: state.experienceId,
      ),
    );
    emit(
      state.copyWith(
        objectivesToDo: _objectivesLeft,
      ),
    );
  }

  void _onObjectiveAccomplished(_ObjectiveAccomplished event, Emitter emit) {
    final _objectivesLeft = state.objectivesToDo.minusElement(event.objective);
    final _finished = _objectivesLeft.isEmpty();
    if (!_finished) {
      getIt<accomplish_objective.AccomplishObjective>()(
        accomplish_objective.Params(
          objective: event.objective,
          experienceId: state.experienceId,
        ),
      );
    }
    emit(
      state.copyWith(
        objectivesToDo: _objectivesLeft,
        isFinished: _finished,
        showExplanation: false,
      ),
    );
  }

  FutureOr<void> _onInitialized(_Initialized event, Emitter emit) async {
    final _failureOrObjectiveSet =
        await getIt<save_user_progress.SaveUserProgress>()(
      save_user_progress.Params(
        objectiveList: event.objectiveList,
        experienceId: event.experienceId,
      ),
    );
    // Even if there's an error at least the user can continue with the experience
    emit(
      _failureOrObjectiveSet.fold(
        (_) => ObjectivesTrackerState.initial().copyWith(
          objectivesToDo: event.objectiveList.getOrCrash().toList(),
          experienceId: event.experienceId,
        ),
        (_objectiveList) => ObjectivesTrackerState.initial().copyWith(
          objectivesToDo: _objectiveList.isNotEmpty
              ? _objectiveList.getOrCrash().toList()
              : event.objectiveList.getOrCrash().toList(),
          experienceId: event.experienceId,
        ),
      ),
    );
  }
}
