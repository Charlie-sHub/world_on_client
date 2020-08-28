import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/profile/use_case/follow_user.dart';
import 'package:worldon/domain/profile/use_case/follows_user.dart';
import 'package:worldon/domain/profile/use_case/un_follow_user.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  FollowUser followUser;
  FollowsUser followsUser;
  UnFollowUser unFollowUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      followUser = getIt<FollowUser>();
      followsUser = getIt<FollowsUser>();
      unFollowUser = getIt<UnFollowUser>();
    },
  );
  final followedUser = getValidUser();
  final notFollowedUser = getValidUser().copyWith(id: 2);
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<FollowActorBloc>(),
    expect: [],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        "Should emit followed",
        build: () {
          when(followsUser.call(any)).thenAnswer((_) async => right(true));
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async => bloc.add(FollowActorEvent.initialized(followedUser)),
        verify: (_) async {
          verify(followsUser.call(any));
          verifyNoMoreInteractions(followsUser);
        },
        expect: [const FollowActorState.follows()],
      );
      blocTest(
        "Should emit notFollowed",
        build: () {
          when(followsUser.call(any)).thenAnswer((_) async => right(false));
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async => bloc.add(FollowActorEvent.initialized(notFollowedUser)),
        verify: (_) async {
          verify(followsUser.call(any));
          verifyNoMoreInteractions(followsUser);
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
        build: () {
          when(followsUser.call(any)).thenAnswer((_) async => right(true));
          when(unFollowUser.call(any)).thenAnswer((_) async => right(unit));
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async {
          bloc.add(FollowActorEvent.initialized(followedUser));
          bloc.add(FollowActorEvent.unFollowed(followedUser));
        },
        verify: (_) async {
          verify(followsUser.call(any));
          verifyNoMoreInteractions(followsUser);
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
        build: () {
          when(followsUser.call(any)).thenAnswer((_) async => right(false));
          when(followUser.call(any)).thenAnswer((_) async => right(unit));
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async {
          bloc.add(FollowActorEvent.initialized(notFollowedUser));
          bloc.add(FollowActorEvent.followed(notFollowedUser));
        },
        verify: (_) async {
          verify(followsUser.call(any));
          verifyNoMoreInteractions(followsUser);
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
        build: () {
          when(followsUser.call(any)).thenAnswer((_) async => right(true));
          when(unFollowUser.call(any)).thenAnswer((_) async => left(failure));
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async {
          bloc.add(FollowActorEvent.initialized(followedUser));
          bloc.add(FollowActorEvent.unFollowed(followedUser));
        },
        verify: (_) async {
          verify(followsUser.call(any));
          verifyNoMoreInteractions(followsUser);
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
        build: () {
          when(followsUser.call(any)).thenAnswer((_) async => right(false));
          when(followUser.call(any)).thenAnswer((_) async => left(failure));
          return getIt<FollowActorBloc>();
        },
        act: (bloc) async {
          bloc.add(FollowActorEvent.initialized(notFollowedUser));
          bloc.add(FollowActorEvent.followed(notFollowedUser));
        },
        verify: (_) async {
          verify(followsUser.call(any));
          verifyNoMoreInteractions(followsUser);
          verify(followUser.call(any));
          verifyNoMoreInteractions(followUser);
        },
        expect: [
          const FollowActorState.followsNot(),
          const FollowActorState.actionInProgress(),
          const FollowActorState.followFailure(failure),
        ],
      );
    },
  );
}
