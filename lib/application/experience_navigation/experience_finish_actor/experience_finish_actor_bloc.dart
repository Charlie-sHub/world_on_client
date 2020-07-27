import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/finish_experience.dart' as finish_experience;
import 'package:worldon/domain/experience_navigation/use_case/reward_user.dart' as reward_user;
import 'package:worldon/injection.dart';

part 'experience_finish_actor_bloc.freezed.dart';

part 'experience_finish_actor_event.dart';

part 'experience_finish_actor_state.dart';

@injectable
class ExperienceFinishActorBloc extends Bloc<ExperienceFinishActorEvent, ExperienceFinishActorState> {
  ExperienceFinishActorBloc() : super(const ExperienceFinishActorState.initial());

  @override
  Stream<ExperienceFinishActorState> mapEventToState(ExperienceFinishActorEvent event) async* {
    yield* event.map(
      finishedExperience: onFinishedExperience,
    );
  }

  // Maybe these should be separate events
  Stream<ExperienceFinishActorState> onFinishedExperience(_FinishedExperience event) async* {
    yield const ExperienceFinishActorState.actionInProgress();
    final _finishExperience = getIt<finish_experience.FinishExperience>();
    final _finishFailureOrUnit = await _finishExperience(
      finish_experience.Params(experienceId: event.experience.id),
    );
    yield _finishFailureOrUnit.fold(
      (failure) => ExperienceFinishActorState.finishFailure(failure),
      (_) => const ExperienceFinishActorState.finishSuccess(),
    );
    final _rewardUser = getIt<reward_user.RewardUser>();
    final _rewardFailureOrUnit = await _rewardUser(
      reward_user.Params(experienceId: event.experience.id),
    );
    yield _rewardFailureOrUnit.fold(
      (failure) => ExperienceFinishActorState.rewardFailure(failure),
      (_) => const ExperienceFinishActorState.rewardSuccess(),
    );
  }
}
