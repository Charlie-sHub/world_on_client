import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/block_actor/block_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/profile/use_case/block_user.dart';
import 'package:worldon/domain/profile/use_case/un_block_user.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  BlockUser blockUser;
  UnBlockUser unBlockUser;
  GetLoggedInUser getLoggedInUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      blockUser = getIt<BlockUser>();
      unBlockUser = getIt<UnBlockUser>();
      getLoggedInUser = getIt<GetLoggedInUser>();
    },
  );
  final blockedUser = getValidUser();
  final notBlockedUser = getValidUser().copyWith(id: 2);
  final loggedInUser = getValidUser().copyWith(
    id: 3,
    blockedUsersIds: {
      blockedUser.id,
    },
  );
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<BlockActorBloc>(),
    expect: [],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        "Should emit blocked",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(loggedInUser));
          return getIt<BlockActorBloc>();
        },
        act: (bloc) async => bloc.add(BlockActorEvent.initialized(blockedUser)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [const BlockActorState.blocks()],
      );
      blocTest(
        "Should emit notBlocked",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(loggedInUser));
          return getIt<BlockActorBloc>();
        },
        act: (bloc) async => bloc.add(BlockActorEvent.initialized(notBlockedUser)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [const BlockActorState.blocksNot()],
      );
    },
  );
  group(
    TestDescription.groupOnSuccess,
    () {
      blocTest(
        "${TestDescription.shouldEmitSuccess} by un-blocking",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(loggedInUser));
          when(unBlockUser.call(any)).thenAnswer((_) async => right(unit));
          return getIt<BlockActorBloc>();
        },
        act: (bloc) async {
          bloc.add(BlockActorEvent.initialized(blockedUser));
          bloc.add(BlockActorEvent.unBlocked(blockedUser));
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
          verify(unBlockUser.call(any));
          verifyNoMoreInteractions(unBlockUser);
        },
        expect: [
          const BlockActorState.blocks(),
          const BlockActorState.actionInProgress(),
          const BlockActorState.unBlockSuccess(),
          const BlockActorState.blocksNot(),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} by blocking",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(loggedInUser));
          when(blockUser.call(any)).thenAnswer((_) async => right(unit));
          return getIt<BlockActorBloc>();
        },
        act: (bloc) async {
          bloc.add(BlockActorEvent.initialized(notBlockedUser));
          bloc.add(BlockActorEvent.blocked(notBlockedUser));
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
          verify(blockUser.call(any));
          verifyNoMoreInteractions(blockUser);
        },
        expect: [
          const BlockActorState.blocksNot(),
          const BlockActorState.actionInProgress(),
          const BlockActorState.blockSuccess(),
          const BlockActorState.blocks(),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      blocTest(
        "${TestDescription.shouldEmitFailure} by un-blocking",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(loggedInUser));
          when(unBlockUser.call(any)).thenAnswer((_) async => left(failure));
          return getIt<BlockActorBloc>();
        },
        act: (bloc) async {
          bloc.add(BlockActorEvent.initialized(blockedUser));
          bloc.add(BlockActorEvent.unBlocked(blockedUser));
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
          verify(unBlockUser.call(any));
          verifyNoMoreInteractions(unBlockUser);
        },
        expect: [
          const BlockActorState.blocks(),
          const BlockActorState.actionInProgress(),
          const BlockActorState.unBlockFailure(failure),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} by blocking",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(loggedInUser));
          when(blockUser.call(any)).thenAnswer((_) async => left(failure));
          return getIt<BlockActorBloc>();
        },
        act: (bloc) async {
          bloc.add(BlockActorEvent.initialized(notBlockedUser));
          bloc.add(BlockActorEvent.blocked(notBlockedUser));
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
          verify(blockUser.call(any));
          verifyNoMoreInteractions(blockUser);
        },
        expect: [
          const BlockActorState.blocksNot(),
          const BlockActorState.actionInProgress(),
          const BlockActorState.blockFailure(failure),
        ],
      );
      blocTest(
        TestDescription.throwUnAuthenticated,
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<BlockActorBloc>();
        },
        act: (bloc) async => bloc.add(BlockActorEvent.initialized(notBlockedUser)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        errors: [isA<UnAuthenticatedError>()],
      );
    },
  );
}
