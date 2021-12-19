import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_log/use_case/add_experience_to_log.dart'
    as add_experience_to_log;
import 'package:worldon/domain/experience_log/use_case/dismiss_experience_from_log.dart'
    as dismiss_experience_from_log;
import 'package:worldon/injection.dart';

part 'experience_add_to_log_actor_bloc.freezed.dart';
part 'experience_add_to_log_actor_event.dart';
part 'experience_add_to_log_actor_state.dart';

@injectable
class ExperienceAddToLogActorBloc
    extends Bloc<ExperienceAddToLogActorEvent, ExperienceAddToLogActorState> {
  ExperienceAddToLogActorBloc()
      : super(ExperienceAddToLogActorState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_AddedExperienceToLog>(_onAddedExperienceToLog);
    on<_DismissedExperienceFromLog>(_onDismissedExperienceFromLog);
  }

  FutureOr<void> _onAddedExperienceToLog(
    _AddedExperienceToLog event,
    Emitter emit,
  ) async {
    emit(
      state.copyWith(
        failureOrSuccessOption: none(),
      ),
    );
    final _failureOrUnit =
        await getIt<add_experience_to_log.AddExperienceToLog>()(
      add_experience_to_log.Params(experienceId: event.experienceId),
    );
    emit(
      _failureOrUnit.fold(
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
      ),
    );
  }

  FutureOr<void> _onDismissedExperienceFromLog(
    _DismissedExperienceFromLog event,
    Emitter emit,
  ) async {
    emit(
      state.copyWith(
        failureOrSuccessOption: none(),
      ),
    );
    final _failureOrUnit =
        await getIt<dismiss_experience_from_log.DismissExperienceFromLog>()(
      dismiss_experience_from_log.Params(experienceId: event.experienceId),
    );
    emit(
      _failureOrUnit.fold(
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
      ),
    );
  }

  void _onInitialized(_Initialized event, Emitter emit) {
    if (event.experiencesToDoIds.contains(event.experienceId)) {
      emit(
        state.copyWith(
          inLog: true,
          toDoAmount: event.toDoAmount,
        ),
      );
    } else {
      emit(
        state.copyWith(
          inLog: false,
          toDoAmount: event.toDoAmount,
        ),
      );
    }
  }
}
