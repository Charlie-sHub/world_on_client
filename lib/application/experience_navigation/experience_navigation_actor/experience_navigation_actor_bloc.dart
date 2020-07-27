import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/use_case/get_current_location.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/use_case/fill_objective_tracker.dart' as fill_objective_tracker;
import 'package:worldon/domain/experience_navigation/use_case/finish_experience.dart' as finish_experience;
import 'package:worldon/domain/experience_navigation/use_case/like_experience.dart' as like_experience;
import 'package:worldon/domain/experience_navigation/use_case/load_surrounding_experiences.dart' as load_surrounding_experiences;
import 'package:worldon/domain/experience_navigation/use_case/reward_user.dart' as reward_user;
import 'package:worldon/injection.dart';

part 'experience_navigation_actor_bloc.freezed.dart';
part 'experience_navigation_actor_event.dart';
part 'experience_navigation_actor_state.dart';

@Deprecated("This monstrosity doesn't even work, use the other blocs")
@injectable
class ExperienceNavigationActorBloc extends Bloc<ExperienceNavigationActorEvent, ExperienceNavigationActorState> {
  ExperienceNavigationActorBloc() : super(ExperienceNavigationActorState.initial());

  @override
  Stream<ExperienceNavigationActorState> mapEventToState(ExperienceNavigationActorEvent event) async* {
    yield* event.map(
      initialized: onInitialized,
      objectiveAccomplished: onObjectiveAccomplished,
      liked: onLiked,
      gotCurrentLocation: onGotCurrentLocation,

      // Should only be available after finishing the Experience
      difficultyRated: (event) async* {},

      // Should only be added from the bloc itself
      experienceFinished: onExperienceFinished,
      userRewarded: onUserRewarded,
    );
  }

  Stream<ExperienceNavigationActorState> onGotCurrentLocation(_GotCurrentLocation event) async* {
    final _getCurrentLocation = getIt<GetCurrentLocation>();
    final _loadSurroundingExperiences = getIt<load_surrounding_experiences.LoadSurroundingExperiences>();
    final _coordinates = _getCurrentLocation(getIt<NoParams>()).fold(
      // TODO: Doesn't seem like a good solution
      (failure) => Coordinates.empty(),
      id,
    );
    final _failureOrExperiences = await _loadSurroundingExperiences(
      load_surrounding_experiences.Params(
        coordinates: _coordinates,
      ),
    );
    yield state.copyWith(
      surroundingExperiences: _failureOrExperiences.fold(
          (failure) => none(),
          (experienceSet) => some(experienceSet),
      ),
      currentLocation: _coordinates,
    );
  }

  Stream<ExperienceNavigationActorState> onLiked(_Liked event) async* {
    Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    final _likeExperience = getIt<like_experience.LikeExperience>();
    _failureOrUnit = await _likeExperience(
      like_experience.Params(
        experienceId: state.experience.id,
      ),
    );
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      failureOrSuccessOption: optionOf(_failureOrUnit),
    );
  }

  Stream<ExperienceNavigationActorState> onExperienceFinished(_ExperienceFinished event) async* {
    Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    final _finishExperience = getIt<finish_experience.FinishExperience>();
    _failureOrUnit = await _finishExperience(
      finish_experience.Params(
        experienceId: state.experience.id,
      ),
    );
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      failureOrSuccessOption: optionOf(_failureOrUnit),
    );
  }

  Stream<ExperienceNavigationActorState> onUserRewarded(_UserRewarded event) async* {
    Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    final _rewardUser = getIt<reward_user.RewardUser>();
    _failureOrUnit = await _rewardUser(
      reward_user.Params(
        experienceId: state.experience.id,
      ),
    );
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      failureOrSuccessOption: optionOf(_failureOrUnit),
    );
  }

  Stream<ExperienceNavigationActorState> onObjectiveAccomplished(_ObjectiveAccomplished event) async* {
    state.objectiveTracker[event.objective.id] = true;
    final _isFinished = !state.objectiveTracker.containsValue(false);
    yield state.copyWith(
      isFinished: _isFinished,
      // objectiveTracker: state.objectiveTracker,
      failureOrSuccessOption: none(),
    );
    if (_isFinished) {
      // These Events could be added from the UI
      add(const ExperienceNavigationActorEvent.experienceFinished());
      add(const ExperienceNavigationActorEvent.userRewarded());
    }
  }

  Stream<ExperienceNavigationActorState> onInitialized(_Initialized event) async* {
    // Could the declaration of these use cases be moved? they're injected singletons anyway though, so it's not an issues of creating new objects or not.
    final _getCurrentLocation = getIt<GetCurrentLocation>();
    final _loadSurroundingExperiences = getIt<load_surrounding_experiences.LoadSurroundingExperiences>();
    final _fillObjectiveTracker = getIt<fill_objective_tracker.FillObjectiveTracker>();
    final _coordinates = _getCurrentLocation(getIt<NoParams>()).fold(
        (failure) => Coordinates.empty(),
      id,
    );
    final _failureOrExperiences = await _loadSurroundingExperiences(
      load_surrounding_experiences.Params(coordinates: _coordinates),
    );
    yield event.experienceOption.fold(
        () => state,
        (experience) =>
        state.copyWith(
        experience: experience,
        objectiveTracker: _fillObjectiveTracker(
          fill_objective_tracker.Params(objectiveSet: experience.objectives),
        ).fold(
          // TODO: Find a better way to handle failures in this case
          // Maybe make the use case return the map itself and ignore possible nulls
            (failure) => {},
          id,
        ),
        surroundingExperiences: _failureOrExperiences.fold(
            (failure) => none(),
            (experienceSet) => some(experienceSet),
        ),
        currentLocation: _coordinates,
      ),
    );
  }
}
