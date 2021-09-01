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
      finishedExperience: _onFinishedExperience,
    );
  }

  Stream<ExperienceFinishActorState> _onFinishedExperience(_FinishedExperience event) async* {
    yield const ExperienceFinishActorState.actionInProgress();
    final _finishFailureOrUnit = await getIt<finish_experience.FinishExperience>()(
      finish_experience.Params(experienceId: event.experience.id),
    );
    final _rewardFailureOrAmountOfXP = await getIt<reward_user.RewardUser>()(
      reward_user.Params(
        difficulty: event.experience.difficulty,
      ),
    );
    yield _finishFailureOrUnit.fold(
      (failure) => ExperienceFinishActorState.finishFailure(failure),
      (_) => _rewardFailureOrAmountOfXP.fold(
        (failure) => ExperienceFinishActorState.finishFailure(failure),
        (map) => ExperienceFinishActorState.finishSuccess(
          map["experiencePoints"] as int,
          leveledUp: map["leveledUp"] as bool,
        ),
      ),
    );
  }
}
