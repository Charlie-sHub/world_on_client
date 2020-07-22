import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_log/use_case/add_experience_to_log.dart' as add_experience_to_log;
import 'package:worldon/domain/experience_log/use_case/dismiss_experience_from_log.dart' as dismiss_experience_from_log;
import 'package:worldon/injection.dart';

part 'experience_card_actor_bloc.freezed.dart';
part 'experience_card_actor_event.dart';
part 'experience_card_actor_state.dart';

@injectable
class ExperienceCardActorBloc extends Bloc<ExperienceCardActorEvent, ExperienceCardActorState> {
  ExperienceCardActorBloc() : super(const ExperienceCardActorState.initial());

  @override
  Stream<ExperienceCardActorState> mapEventToState(ExperienceCardActorEvent event) async* {
    yield* event.map(
      initialized: onInitialized,
      dismissedExperienceFromLog: onDismissedExperienceFromLog,
      addedExperienceToLog: onAddedExperienceToLog,
    );
  }

  Stream<ExperienceCardActorState> onAddedExperienceToLog(_AddedExperienceToLog event) async* {
    yield const ExperienceCardActorState.actionInProgress();
    final _addExperienceToLog = getIt<add_experience_to_log.AddExperienceToLog>();
    final _failureOrUnit = await _addExperienceToLog(
      add_experience_to_log.Params(experienceId: event.experience.id),
    );
    yield _failureOrUnit.fold(
      (failure) => ExperienceCardActorState.additionFailure(failure),
      (_) => const ExperienceCardActorState.additionSuccess(),
    );
  }

  Stream<ExperienceCardActorState> onDismissedExperienceFromLog(_DismissedExperienceFromLog event) async* {
    yield const ExperienceCardActorState.actionInProgress();
    final _dismissExperienceFromLog = getIt<dismiss_experience_from_log.DismissExperienceFromLog>();
    final _failureOrUnit = await _dismissExperienceFromLog(
      dismiss_experience_from_log.Params(experienceId: event.experience.id),
    );
    yield _failureOrUnit.fold(
      (failure) => ExperienceCardActorState.dismissalFailure(failure),
      (_) => const ExperienceCardActorState.dismissalSuccess(),
    );
  }

  Stream<ExperienceCardActorState> onInitialized(_Initialized event) async* {
    final _getLoggedInUser = getIt<GetLoggedInUser>();
    final _loggedInUserOption = await _getLoggedInUser(getIt<NoParams>());
    final _loggedInUser = _loggedInUserOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    if (_loggedInUser.experiencesToDo.contains(event.experience)) {
      yield const ExperienceCardActorState.inLog();
    } else {
      yield const ExperienceCardActorState.notInLog();
    }
  }
}
