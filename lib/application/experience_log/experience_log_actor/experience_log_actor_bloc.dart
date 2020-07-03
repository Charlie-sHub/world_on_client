import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/experience_log/use_case/dismiss_experience_from_log.dart';
import 'package:worldon/injection.dart';

part 'experience_log_actor_bloc.freezed.dart';

part 'experience_log_actor_event.dart';

part 'experience_log_actor_state.dart';

@injectable
class ExperienceLogActorBloc extends Bloc<ExperienceLogActorEvent, ExperienceLogActorState> {
  ExperienceLogActorBloc() : super(const ExperienceLogActorState.initial());

  @override
  Stream<ExperienceLogActorState> mapEventToState(ExperienceLogActorEvent event) async* {
    yield* event.map(
      dismissExperience: onDismissExperience,
    );
  }

  Stream<ExperienceLogActorState> onDismissExperience(_DismissExperience event) async* {
    yield const ExperienceLogActorState.actionInProgress();
    final _dismissExperienceFromLog = getIt<DismissExperienceFromLog>();
    final _failureOrUnit = await _dismissExperienceFromLog(
      Params(experienceId: event.experienceId),
    );
    yield _failureOrUnit.fold(
      (failure) => ExperienceLogActorState.dismissalFailure(failure),
      (_) => const ExperienceLogActorState.dismissalSuccess(),
    );
  }
}
