import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/blocked_watcher/blocked_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/profile/use_case/load_blocked_users.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  LoadBlockedUsers loadBlockedUsers;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadBlockedUsers = getIt<LoadBlockedUsers>();
    },
  );
  final usersBlocked = {
    getValidUser(),
    getValidUser().copyWith(id: 2),
  };
  final user = getValidUser().copyWith(
    id: 3,
    blockedUsers: usersBlocked,
  );
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<BlockedWatcherBloc>(),
    skip: 0,
    expect: [const BlockedWatcherState.initial()],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () async {
      when(loadBlockedUsers.call(any)).thenAnswer((realInvocation) => createStream(right(usersBlocked)));
      return getIt<BlockedWatcherBloc>();
    },
    act: (bloc) async => bloc.add(BlockedWatcherEvent.watchBlockedUsersStarted(user)),
    verify: (_) async {
      verify(loadBlockedUsers.call(any));
      verifyNoMoreInteractions(loadBlockedUsers);
    },
    expect: [
      const BlockedWatcherState.loadInProgress(),
      BlockedWatcherState.loadSuccess(usersBlocked),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () async {
      when(loadBlockedUsers.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<BlockedWatcherBloc>();
    },
    act: (bloc) async => bloc.add(BlockedWatcherEvent.watchBlockedUsersStarted(user)),
    verify: (_) async {
      verify(loadBlockedUsers.call(any));
      verifyNoMoreInteractions(loadBlockedUsers);
    },
    expect: [
      const BlockedWatcherState.loadInProgress(),
      const BlockedWatcherState.loadFailure(failure),
    ],
  );
}
