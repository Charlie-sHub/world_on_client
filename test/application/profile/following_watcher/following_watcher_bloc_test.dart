import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/following_watcher/following_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/profile/use_case/watch_following_users.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchFollowingUsers loadFollowingUsers;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadFollowingUsers = getIt<WatchFollowingUsers>();
    },
  );

  final usersFollowing = KtList.of(
    getValidUser(),
    getValidUser().copyWith(id: 2),
  );
  final user = getValidUser().copyWith(id: 3);
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<FollowingWatcherBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(loadFollowingUsers.call(any)).thenAnswer((realInvocation) => createStream(right(usersFollowing)));
      return getIt<FollowingWatcherBloc>();
    },
    act: (bloc) async => bloc.add(FollowingWatcherEvent.watchFollowingUsersStarted(user)),
    verify: (_) async {
      verify(loadFollowingUsers.call(any));
      verifyNoMoreInteractions(loadFollowingUsers);
    },
    expect: [
      const FollowingWatcherState.loadInProgress(),
      FollowingWatcherState.loadSuccess(usersFollowing),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () {
      when(loadFollowingUsers.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<FollowingWatcherBloc>();
    },
    act: (bloc) async => bloc.add(FollowingWatcherEvent.watchFollowingUsersStarted(user)),
    verify: (_) async {
      verify(loadFollowingUsers.call(any));
      verifyNoMoreInteractions(loadFollowingUsers);
    },
    expect: [
      const FollowingWatcherState.loadInProgress(),
      const FollowingWatcherState.loadFailure(failure),
    ],
  );
}
