import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_log/use_case/add_experience_to_log.dart' as add_experience_to_log;
import 'package:worldon/domain/experience_log/use_case/dismiss_experience_from_log.dart'
    as dismiss_experience_from_log;
import 'package:worldon/injection.dart';

part 'experience_add_to_log_actor_bloc.freezed.dart';
part 'experience_add_to_log_actor_event.dart';
part 'experience_add_to_log_actor_state.dart';

@injectable
class ExperienceAddToLogActorBloc extends Bloc<ExperienceAddToLogActorEvent, ExperienceAddToLogActorState> {
  ExperienceAddToLogActorBloc() : super(ExperienceAddToLogActorState.initial());

  @override
  Stream<ExperienceAddToLogActorState> mapEventToState(ExperienceAddToLogActorEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      dismissedExperienceFromLog: _onDismissedExperienceFromLog,
      addedExperienceToLog: _onAddedExperienceToLog,
    );
  }

  Stream<ExperienceAddToLogActorState> _onAddedExperienceToLog(_AddedExperienceToLog event) async* {
    yield state.copyWith(
      failureOrSuccessOption: none(),
    );
    final _failureOrUnit = await getIt<add_experience_to_log.AddExperienceToLog>()(
      add_experience_to_log.Params(experienceId: event.experienceId),
    );
    yield _failureOrUnit.fold(
      (failure) => state.copyWith(
        failureOrSuccessOption: some(
          left(failure),
        ),
      ),
      (_) => state.inLog
          ? state.copyWith(
              toDoAmount: state.toDoAmount,
            )
          : state.copyWith(
              inLog: true,
              toDoAmount: state.toDoAmount + 1,
            ),
    );
  }

  Stream<ExperienceAddToLogActorState> _onDismissedExperienceFromLog(
      _DismissedExperienceFromLog event) async* {
    yield state.copyWith(
      failureOrSuccessOption: none(),
    );
    final _failureOrUnit = await getIt<dismiss_experience_from_log.DismissExperienceFromLog>()(
      dismiss_experience_from_log.Params(experienceId: event.experienceId),
    );
    yield _failureOrUnit.fold(
      (failure) => state.copyWith(
        failureOrSuccessOption: some(
          left(failure),
        ),
      ),
      (_) => state.inLog
          ? state.copyWith(
              inLog: false,
              toDoAmount: state.toDoAmount - 1,
            )
          : state.copyWith(
              toDoAmount: state.toDoAmount,
            ),
    );
  }

  Stream<ExperienceAddToLogActorState> _onInitialized(_Initialized event) async* {
    if (event.experiencesToDoIds.contains(event.experienceId)) {
      yield state.copyWith(
        inLog: true,
        toDoAmount: event.toDoAmount,
      );
    } else {
      yield state.copyWith(
        inLog: false,
        toDoAmount: event.toDoAmount,
      );
    }
  }
}
