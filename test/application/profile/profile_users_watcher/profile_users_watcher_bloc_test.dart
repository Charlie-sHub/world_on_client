import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/profile_users_watcher/profile_users_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/use_case/watch_followed_users.dart';
import 'package:worldon/domain/profile/use_case/watch_following_users.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchFollowingUsers loadFollowingUsers;
  WatchFollowedUsers loadFollowedUsers;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadFollowedUsers = getIt<WatchFollowedUsers>();
      loadFollowingUsers = getIt<WatchFollowingUsers>();
    },
  );
  final usersFollowed = KtList.of(
    getValidUser(),
    getValidUser().copyWith(id: UniqueId()),
  );
  final usersFollowing = usersFollowed;
  final user = getValidUser().copyWith(
    id: UniqueId(),
    followedUsersIds: usersFollowed.map((_user) => _user.id).toSet().dart,
  );
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ProfileUsersWatcherBloc>(),
    expect: [],
  );
  group(
    "Testing watchFollowedUsersStarted",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(loadFollowedUsers.call(any)).thenAnswer((realInvocation) => createStream(right(usersFollowed)));
          return getIt<ProfileUsersWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileUsersWatcherEvent.watchFollowedUsersStarted(user));
          bloc.add(ProfileUsersWatcherEvent.usersReceived(right(usersFollowed)));
        },
        verify: (_) async {
          verify(loadFollowedUsers.call(any));
          verifyNoMoreInteractions(loadFollowedUsers);
        },
        expect: [
          const ProfileUsersWatcherState.loadInProgress(),
          ProfileUsersWatcherState.loadSuccess(usersFollowed),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(loadFollowedUsers.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
          return getIt<ProfileUsersWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileUsersWatcherEvent.watchFollowedUsersStarted(user));
          bloc.add(ProfileUsersWatcherEvent.usersReceived(left(failure)));
        },
        verify: (_) async {
          verify(loadFollowedUsers.call(any));
          verifyNoMoreInteractions(loadFollowedUsers);
        },
        expect: [
          const ProfileUsersWatcherState.loadInProgress(),
          const ProfileUsersWatcherState.loadFailure(failure),
        ],
      );
    },
  );
  group(
    "Testing watchFollowingUsersStarted",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(loadFollowingUsers.call(any)).thenAnswer((realInvocation) => createStream(right(usersFollowing)));
          return getIt<ProfileUsersWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileUsersWatcherEvent.watchFollowingUsersStarted(user));
          bloc.add(ProfileUsersWatcherEvent.usersReceived(right(usersFollowing)));
        },
        verify: (_) async {
          verify(loadFollowingUsers.call(any));
          verifyNoMoreInteractions(loadFollowingUsers);
        },
        expect: [
          const ProfileUsersWatcherState.loadInProgress(),
          ProfileUsersWatcherState.loadSuccess(usersFollowing),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(loadFollowingUsers.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
          return getIt<ProfileUsersWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileUsersWatcherEvent.watchFollowingUsersStarted(user));
          bloc.add(ProfileUsersWatcherEvent.usersReceived(left(failure)));
        },
        verify: (_) async {
          verify(loadFollowingUsers.call(any));
          verifyNoMoreInteractions(loadFollowingUsers);
        },
        expect: [
          const ProfileUsersWatcherState.loadInProgress(),
          const ProfileUsersWatcherState.loadFailure(failure),
        ],
      );
    },
  );
}
