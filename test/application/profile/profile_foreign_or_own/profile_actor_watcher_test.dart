import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/profile_watcher/profile_foreign_or_own_bloc.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/use_case/is_logged_in_user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  IsLoggedInUser isLoggedInUser;
  GetLoggedInUser getLoggedInUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      isLoggedInUser = getIt<IsLoggedInUser>();
      getLoggedInUser = getIt<GetLoggedInUser>();
    },
  );
  final ownUser = getValidUser();
  final foreignUser = getValidUser().copyWith(id: UniqueId());
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ProfileWatcherBloc>(),
    expect: [],
  );
  group(
    TestDescription.groupOnSuccess,
    () {
      blocTest(
        "Should emit Own with a given User",
        build: () {
          when(isLoggedInUser.call(any)).thenAnswer((_) async => true);
          return getIt<ProfileWatcherBloc>();
        },
        act: (bloc) async => bloc.add(ProfileWatcherEvent.initializedForeignOrOwn(some(ownUser))),
        verify: (_) async {
          verify(isLoggedInUser.call(any));
          verifyNoMoreInteractions(isLoggedInUser);
        },
        expect: [
          const ProfileWatcherState.loadInProgress(),
          ProfileWatcherState.own(ownUser),
        ],
      );
      blocTest(
        "Should emit Own with no given User",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(ownUser));
          return getIt<ProfileWatcherBloc>();
        },
        act: (bloc) async => bloc.add(ProfileWatcherEvent.initializedForeignOrOwn(none())),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [
          const ProfileWatcherState.loadInProgress(),
          ProfileWatcherState.own(ownUser),
        ],
      );
      blocTest(
        "Should emit Foreign",
        build: () {
          when(isLoggedInUser.call(any)).thenAnswer((_) async => false);
          return getIt<ProfileWatcherBloc>();
        },
        act: (bloc) async => bloc.add(ProfileWatcherEvent.initializedForeignOrOwn(some(foreignUser))),
        verify: (_) async {
          verify(isLoggedInUser.call(any));
          verifyNoMoreInteractions(isLoggedInUser);
        },
        expect: [
          const ProfileWatcherState.loadInProgress(),
          ProfileWatcherState.foreign(foreignUser),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      blocTest(
        "Should emit loadFailure",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          return getIt<ProfileWatcherBloc>();
        },
        act: (bloc) async => bloc.add(ProfileWatcherEvent.initializedForeignOrOwn(none())),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [
          const ProfileWatcherState.loadInProgress(),
          const ProfileWatcherState.loadFailure(),
        ],
      );
    },
  );
}
