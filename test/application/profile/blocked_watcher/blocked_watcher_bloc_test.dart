import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/blocked_watcher/blocked_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/use_case/watch_blocked_users.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchBlockedUsers loadBlockedUsers;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadBlockedUsers = getIt<WatchBlockedUsers>();
    },
  );
  final usersBlocked = KtList.of(
    getValidUser(),
    getValidUser().copyWith(id: UniqueId()),
  );
  final user = getValidUser().copyWith(
    id: UniqueId(),
    blockedUsersIds: usersBlocked.map((_user) => _user.id).toSet().dart,
  );
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<BlockedWatcherBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(loadBlockedUsers.call(any)).thenAnswer((realInvocation) => createStream(right(usersBlocked)));
      return getIt<BlockedWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(BlockedWatcherEvent.watchBlockedUsersStarted(user));
      bloc.add(BlockedWatcherEvent.resultsReceived(right(usersBlocked)));
    },
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
    build: () {
      when(loadBlockedUsers.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<BlockedWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(BlockedWatcherEvent.watchBlockedUsersStarted(user));
      bloc.add(BlockedWatcherEvent.resultsReceived(left(failure)));
    },
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
