import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
  RateExperienceDifficultyActorBloc() : super(RateExperienceDifficultyActorState.initial());

  @override
  Stream<RateExperienceDifficultyActorState> mapEventToState(RateExperienceDifficultyActorEvent event) async* {
    yield* event.map(
      difficultyChanged: (event) async* {
        yield state.copyWith(
          difficulty: event.difficultyRating,
          failureOrSuccessOption: none(),
        );
      },
      difficultyRated: onDifficultyRated,
    );
  }

  Stream<RateExperienceDifficultyActorState> onDifficultyRated(_DifficultyRated event) async* {
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    final _difficulty = Difficulty(state.difficulty);
    final _rateDifficulty = getIt<RateDifficulty>();
    final _failureOrUnit = await _rateDifficulty(
      Params(
        difficulty: _difficulty,
        experienceId: event.experience.id,
      ),
    );
    yield state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: optionOf(_failureOrUnit),
    );
  }
}
