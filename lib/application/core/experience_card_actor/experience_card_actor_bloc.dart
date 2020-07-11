import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/experience_log/use_case/add_experience_to_log.dart';
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
      addedExperienceToLog: onAddedExperienceToLog,
    );
  }

  Stream<ExperienceCardActorState> onAddedExperienceToLog(_AddedExperienceToLog event) async* {
    yield const ExperienceCardActorState.actionInProgress();
    final _addExperienceToLog = getIt<AddExperienceToLog>();
    final _failureOrUnit = await _addExperienceToLog(
      Params(experienceId: event.experienceId),
    );
    yield _failureOrUnit.fold(
      (failure) => ExperienceCardActorState.additionFailure(failure),
      (_) => const ExperienceCardActorState.additionSuccess(),
    );
  }
}
