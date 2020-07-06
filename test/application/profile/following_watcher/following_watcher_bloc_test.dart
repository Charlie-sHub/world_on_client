import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/following_watcher/following_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/profile/use_case/load_following_users.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  LoadFollowingUsers loadFollowingUsers;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadFollowingUsers = getIt<LoadFollowingUsers>();
    },
  );

  final usersFollowing = {
    getValidUser(),
    getValidUser().copyWith(id: 2),
  };
  final user = getValidUser().copyWith(id: 3);
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<FollowingWatcherBloc>(),
    skip: 0,
    expect: [const FollowingWatcherState.initial()],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () async {
      when(loadFollowingUsers.call(any)).thenAnswer((realInvocation) => createStream(right(usersFollowing)));
      return getIt<FollowingWatcherBloc>();
    },
    act: (bloc) async => bloc.add(FollowingWatcherEvent.followingUsersLoaded(user)),
    verify: (_) async {
      verify(loadFollowingUsers.call(any));
      verifyNoMoreInteractions(loadFollowingUsers);
    },
    expect: [
      const FollowingWatcherState.loading(),
      FollowingWatcherState.loadSuccess(usersFollowing),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () async {
      when(loadFollowingUsers.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<FollowingWatcherBloc>();
    },
    act: (bloc) async => bloc.add(FollowingWatcherEvent.followingUsersLoaded(user)),
    verify: (_) async {
      verify(loadFollowingUsers.call(any));
      verifyNoMoreInteractions(loadFollowingUsers);
    },
    expect: [
      const FollowingWatcherState.loading(),
      const FollowingWatcherState.loadFailure(failure),
    ],
  );
}
