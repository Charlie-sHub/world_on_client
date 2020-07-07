import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/followed_watcher/followed_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/profile/use_case/load_followed_users.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  LoadFollowedUsers loadFollowedUsers;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadFollowedUsers = getIt<LoadFollowedUsers>();
    },
  );

  final usersFollowed = {
    getValidUser(),
    getValidUser().copyWith(id: 2),
  };
  final user = getValidUser().copyWith(
    id: 3,
    followedUsers: usersFollowed,
  );
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<FollowedWatcherBloc>(),
    skip: 0,
    expect: [const FollowedWatcherState.initial()],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () async {
      when(loadFollowedUsers.call(any)).thenAnswer((realInvocation) => createStream(right(usersFollowed)));
      return getIt<FollowedWatcherBloc>();
    },
    act: (bloc) async => bloc.add(FollowedWatcherEvent.watchFollowedUsersStarted(user)),
    verify: (_) async {
      verify(loadFollowedUsers.call(any));
      verifyNoMoreInteractions(loadFollowedUsers);
    },
    expect: [
      const FollowedWatcherState.loadInProgress(),
      FollowedWatcherState.loadSuccess(usersFollowed),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () async {
      when(loadFollowedUsers.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<FollowedWatcherBloc>();
    },
    act: (bloc) async => bloc.add(FollowedWatcherEvent.watchFollowedUsersStarted(user)),
    verify: (_) async {
      verify(loadFollowedUsers.call(any));
      verifyNoMoreInteractions(loadFollowedUsers);
    },
    expect: [
      const FollowedWatcherState.loadInProgress(),
      const FollowedWatcherState.loadFailure(failure),
    ],
  );
}
