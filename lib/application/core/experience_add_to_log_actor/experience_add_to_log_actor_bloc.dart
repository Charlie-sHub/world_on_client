import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_log/use_case/add_experience_to_log.dart'
    as add_experience_to_log;
import 'package:worldon/domain/experience_log/use_case/dismiss_experience_from_log.dart'
    as dismiss_experience_from_log;
import 'package:worldon/injection.dart';

part 'experience_add_to_log_actor_bloc.freezed.dart';
part 'experience_add_to_log_actor_event.dart';tor_event.dart';

part 'experience_add_to_log_actor_state.dart';

@injectable
class ExperienceAddToLogActorBloc
    extends Bloc<ExperienceAddToLogActorEvent, ExperienceAddToLogActorState> {
  ExperienceAddToLogActorBloc() : super(const ExperienceAddToLogActorState.initial());

  @override
  Stream<ExperienceAddToLogActorState> mapEventToState(ExperienceAddToLogActorEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      dismissedExperienceFromLog: _onDismissedExperienceFromLog,
      addedExperienceToLog: _onAddedExperienceToLog,
    );
  }

  Stream<ExperienceAddToLogActorState> _onAddedExperienceToLog(_AddedExperienceToLog event) async* {
    yield const ExperienceAddToLogActorState.actionInProgress();
    final _failureOrUnit = await getIt<add_experience_to_log.AddExperienceToLog>()(
      add_experience_to_log.Params(experienceId: event.experience.id),
    );
    yield _failureOrUnit.fold(
      (failure) => ExperienceAddToLogActorState.additionFailure(failure),
      (_) => const ExperienceAddToLogActorState.additionSuccess(),
    );
  }

  Stream<ExperienceAddToLogActorState> _onDismissedExperienceFromLog(
      _DismissedExperienceFromLog event) async* {
    yield const ExperienceAddToLogActorState.actionInProgress();
    final _failureOrUnit = await getIt<dismiss_experience_from_log.DismissExperienceFromLog>()(
      dismiss_experience_from_log.Params(experienceId: event.experience.id),
    );
    yield _failureOrUnit.fold(
      (failure) => ExperienceAddToLogActorState.dismissalFailure(failure),
      (_) => const ExperienceAddToLogActorState.dismissalSuccess(),
    );
  }

  Stream<ExperienceAddToLogActorState> _onInitialized(_Initialized event) async* {
    if (event.experiencesToDoIds.contains(event.experience.id)) {
      yield const ExperienceAddToLogActorState.inLog();
    } else {
      yield const ExperienceAddToLogActorState.notInLog();
    }
  }
}
