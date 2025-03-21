import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/profile/use_case/watch_experiences_created.dart';
import 'package:worldon/domain/profile/use_case/watch_experiences_done.dart';
import 'package:worldon/domain/profile/use_case/watch_experiences_liked.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchExperiencesLiked loadExperiencesLiked;
  WatchExperiencesDone loadExperiencesDone;
  WatchExperiencesCreated loadExperiencesCreated;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadExperiencesLiked = getIt<WatchExperiencesLiked>();
      loadExperiencesDone = getIt<WatchExperiencesDone>();
      loadExperiencesCreated = getIt<WatchExperiencesCreated>();
    },
  );
  final user = getValidUser();
  final experiences = KtList.of(Experience.empty());
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ProfileExperiencesWatcherBloc>(),
    expect: [],
  );
  group(
    "Testing watchExperiencesDoneStarted event",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(loadExperiencesDone.call(any)).thenAnswer((_) => createStream(right(experiences)));
          return getIt<ProfileExperiencesWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileExperiencesWatcherEvent.watchExperiencesDoneStarted(user));
          bloc.add(ProfileExperiencesWatcherEvent.experiencesReceived(right(experiences)));
        },
        verify: (_) async {
          verify(loadExperiencesDone.call(any));
          verifyNoMoreInteractions(loadExperiencesDone);
        },
        expect: [
          const ProfileExperiencesWatcherState.loadInProgress(),
          ProfileExperiencesWatcherState.loadSuccess(experiences),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(loadExperiencesDone.call(any)).thenAnswer((_) => createStream(left(failure)));
          return getIt<ProfileExperiencesWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileExperiencesWatcherEvent.watchExperiencesDoneStarted(user));
          bloc.add(ProfileExperiencesWatcherEvent.experiencesReceived(left(failure)));
        },
        verify: (_) async {
          verify(loadExperiencesDone.call(any));
          verifyNoMoreInteractions(loadExperiencesDone);
        },
        expect: [
          const ProfileExperiencesWatcherState.loadInProgress(),
          const ProfileExperiencesWatcherState.loadFailure(failure),
        ],
      );
    },
  );
  group(
    "Testing watchExperiencesLikedStarted event",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(loadExperiencesLiked.call(any)).thenAnswer((_) => createStream(right(experiences)));
          return getIt<ProfileExperiencesWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileExperiencesWatcherEvent.watchExperiencesLikedStarted(user));
          bloc.add(ProfileExperiencesWatcherEvent.experiencesReceived(right(experiences)));
        },
        verify: (_) async {
          verify(loadExperiencesLiked.call(any));
          verifyNoMoreInteractions(loadExperiencesLiked);
        },
        expect: [
          const ProfileExperiencesWatcherState.loadInProgress(),
          ProfileExperiencesWatcherState.loadSuccess(experiences),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(loadExperiencesLiked.call(any)).thenAnswer((_) => createStream(left(failure)));
          return getIt<ProfileExperiencesWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileExperiencesWatcherEvent.watchExperiencesLikedStarted(user));
          bloc.add(ProfileExperiencesWatcherEvent.experiencesReceived(left(failure)));
        },
        verify: (_) async {
          verify(loadExperiencesLiked.call(any));
          verifyNoMoreInteractions(loadExperiencesLiked);
        },
        expect: [
          const ProfileExperiencesWatcherState.loadInProgress(),
          const ProfileExperiencesWatcherState.loadFailure(failure),
        ],
      );
    },
  );
  group(
    "Testing watchExperiencesCreatedStarted event",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(loadExperiencesCreated.call(any)).thenAnswer((_) => createStream(right(experiences)));
          return getIt<ProfileExperiencesWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user));
          bloc.add(ProfileExperiencesWatcherEvent.experiencesReceived(right(experiences)));
        },
        verify: (_) async {
          verify(loadExperiencesCreated.call(any));
          verifyNoMoreInteractions(loadExperiencesCreated);
        },
        expect: [
          const ProfileExperiencesWatcherState.loadInProgress(),
          ProfileExperiencesWatcherState.loadSuccess(experiences),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(loadExperiencesCreated.call(any)).thenAnswer((_) => createStream(left(failure)));
          return getIt<ProfileExperiencesWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user));
          bloc.add(ProfileExperiencesWatcherEvent.experiencesReceived(left(failure)));
        },
        verify: (_) async {
          verify(loadExperiencesCreated.call(any));
          verifyNoMoreInteractions(loadExperiencesCreated);
        },
        expect: [
          const ProfileExperiencesWatcherState.loadInProgress(),
          const ProfileExperiencesWatcherState.loadFailure(failure),
        ],
      );
    },
  );
}
