import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/experience_navigation/use_case/rate_difficulty.dart';
import 'package:worldon/injection.dart';

part 'rate_experience_difficulty_actor_bloc.freezed.dart';
part 'rate_experience_difficulty_actor_event.dart';
part 'rate_experience_difficulty_actor_state.dart';

@injectable
class RateExperienceDifficultyActorBloc extends Bloc<
    RateExperienceDifficultyActorEvent, RateExperienceDifficultyActorState> {
  RateExperienceDifficultyActorBloc()
      : super(RateExperienceDifficultyActorState.initial()) {
    on<_DifficultyChanged>(_onDifficultyChanged);
    on<_DifficultyRated>(_onDifficultyRated);
  }

  void _onDifficultyChanged(_DifficultyChanged event, Emitter emit) {
    emit(
      state.copyWith(
        difficulty: event.difficultyRating,
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onDifficultyRated(
    _DifficultyRated event,
    Emitter emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      ),
    );
    final failureOrUnit = await getIt<RateDifficulty>()(
      Params(
        difficulty: Difficulty(state.difficulty),
        experienceId: event.experience.id,
      ),
    );
    emit(
      state.copyWith(
        isSubmitting: false,
        failureOrSuccessOption: optionOf(failureOrUnit),
      ),
    );
  }
}
