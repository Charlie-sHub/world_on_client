import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_actor/experience_navigation_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/use_case/get_current_location.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/experience_navigation/use_case/fill_objective_tracker.dart';
import 'package:worldon/domain/experience_navigation/use_case/finish_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/like_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/load_surrounding_experiences.dart';
import 'package:worldon/domain/experience_navigation/use_case/rate_difficulty.dart';
import 'package:worldon/domain/experience_navigation/use_case/reward_user.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_experience.dart';
import '../../../domain/core/methods/get_valid_tag.dart';
import '../../../test_descriptions.dart';

// TODO: Finish testing and implementing this bloc
void main() {
  // AccomplishObjective accomplishObjective;
  FillObjectiveTracker fillObjectiveTracker;
  FinishExperience finishExperience;
  LikeExperience likeExperience;
  LoadSurroundingExperiences loadSurroundingExperiences;
  RateDifficulty rateDifficulty;
  RewardUser rewardUser;
  GetCurrentLocation getCurrentLocation;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      // accomplishObjective = getIt<AccomplishObjective>();
      fillObjectiveTracker = getIt<FillObjectiveTracker>();
      finishExperience = getIt<FinishExperience>();
      likeExperience = getIt<LikeExperience>();
      loadSurroundingExperiences = getIt<LoadSurroundingExperiences>();
      rateDifficulty = getIt<RateDifficulty>();
      rewardUser = getIt<RewardUser>();
      getCurrentLocation = getIt<GetCurrentLocation>();
    },
  );
  final unFinishedObjectiveTracker = {1: false, 2: false};
  final halfFinishedObjectiveTracker = {1: true, 2: false};
  final finishedObjectiveTracker = {1: true, 2: true};
  final tag = getValidTag();
  final surroundingExperiences = KtSet.of(getValidExperience());
  final experience = getValidExperience();
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  final currentLocation = Coordinates(
    latitude: Latitude(0),
    longitude: Longitude(0),
  );
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ExperienceNavigationActorBloc>(),
    expect: [],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        TestDescription.shouldEmitInitialized,
        build: () {
          when(fillObjectiveTracker.call(any)).thenAnswer((_) => right(unFinishedObjectiveTracker));
          when(loadSurroundingExperiences.call(any)).thenAnswer((_) async => right(surroundingExperiences));
          when(getCurrentLocation.call(any)).thenAnswer((_) => right(currentLocation));
          return getIt<ExperienceNavigationActorBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceNavigationActorEvent.initialized(some(experience))),
        verify: (_) async {
          verify(fillObjectiveTracker.call(any));
          verify(loadSurroundingExperiences.call(any));
          verify(getCurrentLocation.call(any));
        },
        expect: [
          ExperienceNavigationActorState.initial().copyWith(
            experience: experience,
            objectiveTracker: unFinishedObjectiveTracker,
            surroundingExperiences: some(surroundingExperiences),
            currentLocation: currentLocation,
          ),
        ],
      );
      blocTest(
        TestDescription.shouldNotEmitInitialized,
        build: () => getIt<ExperienceNavigationActorBloc>(),
        act: (bloc) async => bloc.add(ExperienceNavigationActorEvent.initialized(none())),
        skip: 0,
        expect: [ExperienceNavigationActorState.initial()],
      );
    },
  );

  group(
    TestDescription.groupOnSuccess,
    () {
      blocTest(
        "${TestDescription.shouldEmitUpdated} with an objective accomplished and the Experience finished",
        build: () {
          // when(accomplishObjective.call(any)).thenAnswer((_) => right(true));
          when(fillObjectiveTracker.call(any)).thenAnswer((_) => right(unFinishedObjectiveTracker));
          when(getCurrentLocation.call(any)).thenAnswer((_) => right(currentLocation));
          when(finishExperience.call(any)).thenAnswer((_) async => right(unit));
          when(rewardUser.call(any)).thenAnswer((_) async => right(unit));
          return getIt<ExperienceNavigationActorBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceNavigationActorEvent.initialized(some(experience)));
          bloc.add(ExperienceNavigationActorEvent.objectiveAccomplished(experience.objectives.getOrCrash().asSet().elementAt(0)));
          // bloc.add(ExperienceNavigationActorEvent.objectiveAccomplished(experience.objectives.getOrCrash().asSet().elementAt(1)));
          // bloc.add(ExperienceNavigationActorEvent.objectiveAccomplished(Objective.empty().copyWith(id: 1)));
          // bloc.add(ExperienceNavigationActorEvent.objectiveAccomplished(Objective.empty().copyWith(id: 2)));
        },
        verify: (_) async {
          // verify(accomplishObjective.call(any));
          verify(fillObjectiveTracker.call(any));
          verify(finishExperience.call(any));
          verify(rewardUser.call(any));
          verify(getCurrentLocation.call(any));
        },
        expect: [
          ExperienceNavigationActorState.initial().copyWith(
            experience: experience,
            objectiveTracker: halfFinishedObjectiveTracker,
            surroundingExperiences: some(surroundingExperiences),
            currentLocation: currentLocation,
          ),
          ExperienceNavigationActorState.initial().copyWith(
            experience: experience,
            objectiveTracker: finishedObjectiveTracker,
            surroundingExperiences: some(surroundingExperiences),
            currentLocation: currentLocation,
            isFinished: true,
          ),
          /*
          ExperienceNavigationActorState.initial().copyWith(
            experience: experience,
            objectiveTracker: finishedObjectiveTracker,
            surroundingExperiences: some(surroundingExperiences),
            currentLocation: currentLocation,
            isFinished: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
          ExperienceNavigationActorState.initial().copyWith(
            experience: experience,
            objectiveTracker: finishedObjectiveTracker,
            surroundingExperiences: some(surroundingExperiences),
            currentLocation: currentLocation,
            isFinished: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
           */
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} when liking an experience",
        build: () {
          when(likeExperience.call(any)).thenAnswer((_) async => right(unit));
          when(fillObjectiveTracker.call(any)).thenAnswer((_) => right(unFinishedObjectiveTracker));
          when(getCurrentLocation.call(any)).thenAnswer((_) => right(currentLocation));
          return getIt<ExperienceNavigationActorBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceNavigationActorEvent.initialized(some(experience)));
          bloc.add(const ExperienceNavigationActorEvent.liked());
        },
        verify: (_) async {
          verify(likeExperience.call(any));
          verify(fillObjectiveTracker.call(any));
          verify(getCurrentLocation.call(any));
        },
        expect: [
          ExperienceNavigationActorState.initial().copyWith(
            experience: experience,
            objectiveTracker: unFinishedObjectiveTracker,
            surroundingExperiences: some(surroundingExperiences),
            currentLocation: currentLocation,
          ),
          ExperienceNavigationActorState.initial().copyWith(
            experience: experience,
            objectiveTracker: unFinishedObjectiveTracker,
            surroundingExperiences: some(surroundingExperiences),
            currentLocation: currentLocation,
            isSubmitting: true,
          ),
          ExperienceNavigationActorState.initial().copyWith(
            experience: experience,
            objectiveTracker: unFinishedObjectiveTracker,
            surroundingExperiences: some(surroundingExperiences),
            currentLocation: currentLocation,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} when changing location",
        build: () {
          when(likeExperience.call(any)).thenAnswer((_) async => right(unit));
          when(fillObjectiveTracker.call(any)).thenAnswer((_) => right(unFinishedObjectiveTracker));
          when(loadSurroundingExperiences.call(any)).thenAnswer((_) async => right(surroundingExperiences));
          when(getCurrentLocation.call(any)).thenAnswer((_) => right(currentLocation));
          return getIt<ExperienceNavigationActorBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceNavigationActorEvent.initialized(some(experience)));
          bloc.add(const ExperienceNavigationActorEvent.gotCurrentLocation());
        },
        verify: (_) async {
          verify(likeExperience.call(any));
          verify(fillObjectiveTracker.call(any));
          verify(loadSurroundingExperiences.call(any));
          verify(getCurrentLocation.call(any));
        },
        expect: [
          ExperienceNavigationActorState.initial().copyWith(
            experience: experience,
            objectiveTracker: unFinishedObjectiveTracker,
            surroundingExperiences: some(surroundingExperiences),
            currentLocation: currentLocation,
          ),
          ExperienceNavigationActorState.initial().copyWith(
            experience: experience,
            objectiveTracker: unFinishedObjectiveTracker,
            surroundingExperiences: some(surroundingExperiences),
            currentLocation: currentLocation,
            isSubmitting: true,
          ),
          ExperienceNavigationActorState.initial().copyWith(
            experience: experience,
            objectiveTracker: unFinishedObjectiveTracker,
            surroundingExperiences: some(surroundingExperiences),
            currentLocation: currentLocation,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
    },
    skip: "Currently fails when trying to accomplish an objective",
  );
  group(
    TestDescription.groupOnFailure,
    () {
      //accomplishObjective failure
      //fillObjectiveTracker failure
      //finishExperience failure
      //likeExperience failure
      //loadSurroundingExperiences failure
      //rateDifficulty failure
      //rewardUser failure
      //getCurrentLocation failure
    },
  );
}
