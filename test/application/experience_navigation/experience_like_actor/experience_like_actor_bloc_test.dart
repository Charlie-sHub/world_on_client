import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/experience_navigation/use_case/dislike_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/like_experience.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  LikeExperience likeExperience;
  DislikeExperience dislikeExperience;
  GetLoggedInUser getLoggedInUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      likeExperience = getIt<LikeExperience>();
      dislikeExperience = getIt<DislikeExperience>();
      getLoggedInUser = getIt<GetLoggedInUser>();
    },
  );
  final experienceLiked = getValidExperience();
  final experienceNotLiked = experienceLiked.copyWith(id: 2);
  final user = getValidUser().copyWith(experiencesLikedIds: {experienceLiked.id});
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ExperienceLikeActorBloc>(),
    expect: [],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        "Should emit liked",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ExperienceLikeActorBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceLikeActorEvent.initialized(experienceLiked)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [const ExperienceLikeActorState.likes()],
      );
      blocTest(
        "Should emit neutral",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ExperienceLikeActorBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceLikeActorEvent.initialized(experienceNotLiked)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [const ExperienceLikeActorState.neutral()],
      );
    },
  );
  group(
    "Testing liked",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(likeExperience.call(any)).thenAnswer((_) async => right(unit));
          return getIt<ExperienceLikeActorBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceLikeActorEvent.liked(experienceNotLiked)),
        verify: (_) async => verify(likeExperience.call(any)),
        expect: [
          const ExperienceLikeActorState.actionInProgress(),
          const ExperienceLikeActorState.likeSuccess(),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(likeExperience.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceLikeActorBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceLikeActorEvent.liked(experienceNotLiked)),
        verify: (_) async => verify(likeExperience.call(any)),
        expect: [
          const ExperienceLikeActorState.actionInProgress(),
          const ExperienceLikeActorState.likeFailure(failure),
        ],
      );
    },
  );
  group(
    "Testing disliked",
      () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(dislikeExperience.call(any)).thenAnswer((_) async => right(unit));
          return getIt<ExperienceLikeActorBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceLikeActorEvent.disliked(experienceLiked)),
        verify: (_) async => verify(dislikeExperience.call(any)),
        expect: [
          const ExperienceLikeActorState.actionInProgress(),
          const ExperienceLikeActorState.dislikeSuccess(),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(dislikeExperience.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceLikeActorBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceLikeActorEvent.disliked(experienceLiked)),
        verify: (_) async => verify(dislikeExperience.call(any)),
        expect: [
          const ExperienceLikeActorState.actionInProgress(),
          const ExperienceLikeActorState.dislikeFailure(failure),
        ],
      );
    },
  );
}
