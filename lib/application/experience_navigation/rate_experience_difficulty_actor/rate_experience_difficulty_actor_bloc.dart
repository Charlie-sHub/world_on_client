import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/experience_navigation/use_case/rate_difficulty.dart';
import 'package:worldon/injection.dart';

part 'rate_experience_difficulty_actor_bloc.freezed.dart';

part 'rate_experience_difficulty_actor_event.dart';

part 'rate_experience_difficulty_actor_state.dart';

@injectable
class RateExperienceDifficultyActorBloc extends Bloc<RateExperienceDifficultyActorEvent, RateExperienceDifficultyActorState> {
  RateExperienceDifficultyActorBloc() : super(const RateExperienceDifficultyActorState.initial());

  @override
  Stream<RateExperienceDifficultyActorState> mapEventToState(RateExperienceDifficultyActorEvent event) async* {
    yield* event.map(
      difficultyRated: (event) async* {
        yield const RateExperienceDifficultyActorState.actionInProgress();
        final _difficulty = Difficulty(event.difficultyRating);
        final _rateDifficulty = getIt<RateDifficulty>();
        final _failureOrUnit = await _rateDifficulty(
          Params(
            difficulty: _difficulty,
            experienceId: event.experience.id,
          ),
        );
        yield _failureOrUnit.fold(
          (failure) => RateExperienceDifficultyActorState.ratingFailure(failure),
          (_) => const RateExperienceDifficultyActorState.ratingSuccess(),
        );
      },
    );
  }
}
