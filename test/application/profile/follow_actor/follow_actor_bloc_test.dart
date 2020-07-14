import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/profile/use_case/follow_user.dart';
import 'package:worldon/domain/profile/use_case/un_follow_user.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  FollowUser followUser;
  UnFollowUser unFollowUser;
  GetLoggedInUser getLoggedInUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      followUser = getIt<FollowUser>();
      unFollowUser = getIt<UnFollowUser>();
      getLoggedInUser = getIt<GetLoggedInUser>();
    },
  );
  final followedUser = getValidUser();
  final notFollowedUser = getValidUser().copyWith(id: 2);
  final loggedInUser = getValidUser().copyWith(
    id: 3,
    followedUsers: {
      followedUser,
    },
  );
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<FollowActorBloc>(),
    skip: 0,
    expect: [const FollowActorState.initial()],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        "Should emit followed",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(loggedInUser));
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async => bloc.add(FollowActorEvent.initialized(followedUser)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [const FollowActorState.follows()],
      );
      blocTest(
        "Should emit notFollowed",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(loggedInUser));
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async => bloc.add(FollowActorEvent.initialized(notFollowedUser)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [const FollowActorState.followsNot()],
      );
    },
  );
  group(
    TestDescription.groupOnSuccess,
    () {
      blocTest(
        "${TestDescription.shouldEmitSuccess} by un-following",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(loggedInUser));
          when(unFollowUser.call(any)).thenAnswer((_) async => right(unit));
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async {
          bloc.add(FollowActorEvent.initialized(followedUser));
          bloc.add(FollowActorEvent.unFollowed(followedUser));
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
          verify(unFollowUser.call(any));
          verifyNoMoreInteractions(unFollowUser);
        },
        expect: [
          const FollowActorState.follows(),
          const FollowActorState.actionInProgress(),
          const FollowActorState.unFollowSuccess(),
          const FollowActorState.followsNot(),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} by following",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(loggedInUser));
          when(followUser.call(any)).thenAnswer((_) async => right(unit));
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async {
          bloc.add(FollowActorEvent.initialized(notFollowedUser));
          bloc.add(FollowActorEvent.followed(notFollowedUser));
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
          verify(followUser.call(any));
          verifyNoMoreInteractions(followUser);
        },
        expect: [
          const FollowActorState.followsNot(),
          const FollowActorState.actionInProgress(),
          const FollowActorState.followSuccess(),
          const FollowActorState.follows(),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      blocTest(
        "${TestDescription.shouldEmitFailure} by un-following",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(loggedInUser));
          when(unFollowUser.call(any)).thenAnswer((_) async => left(failure));
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async {
          bloc.add(FollowActorEvent.initialized(followedUser));
          bloc.add(FollowActorEvent.unFollowed(followedUser));
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
          verify(unFollowUser.call(any));
          verifyNoMoreInteractions(unFollowUser);
        },
        expect: [
          const FollowActorState.follows(),
          const FollowActorState.actionInProgress(),
          const FollowActorState.unFollowFailure(failure),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} by following",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(loggedInUser));
          when(followUser.call(any)).thenAnswer((_) async => left(failure));
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async {
          bloc.add(FollowActorEvent.initialized(notFollowedUser));
          bloc.add(FollowActorEvent.followed(notFollowedUser));
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
          verify(followUser.call(any));
          verifyNoMoreInteractions(followUser);
        },
        expect: [
          const FollowActorState.followsNot(),
          const FollowActorState.actionInProgress(),
          const FollowActorState.followFailure(failure),
        ],
      );
      blocTest(
        TestDescription.throwUnAuthenticated,
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async => bloc.add(FollowActorEvent.initialized(notFollowedUser)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        errors: [isA<UnAuthenticatedError>()],
      );
    },
  );
}
