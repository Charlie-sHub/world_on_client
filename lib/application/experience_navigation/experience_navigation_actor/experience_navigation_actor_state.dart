part of 'experience_navigation_actor_bloc.dart';

@freezed
abstract class ExperienceNavigationActorState with _$ExperienceNavigationActorState {
  const factory ExperienceNavigationActorState({
    @required Experience experience,
    @required Map<int, bool> objectiveTracker,
    @required Option<Set<Experience>> surroundingExperiences,
    @required Coordinates currentLocation,
    @required bool isFinished,
    // Maybe add a isLoading boolean value for when it's initializing
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _ExperienceNavigationActorState;

  factory ExperienceNavigationActorState.initial() => ExperienceNavigationActorState(
        experience: Experience.empty(),
        objectiveTracker: {},
        surroundingExperiences: none(),
        currentLocation: Coordinates.empty(),
        isFinished: false,
        isSubmitting: false,
        showErrorMessages: false,
        failureOrSuccessOption: none(),
      );
}
