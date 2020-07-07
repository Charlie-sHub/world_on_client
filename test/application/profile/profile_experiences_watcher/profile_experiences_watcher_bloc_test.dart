import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/profile/use_case/load_experiences_created.dart';
import 'package:worldon/domain/profile/use_case/load_experiences_done.dart';
import 'package:worldon/domain/profile/use_case/load_experiences_liked.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  LoadExperiencesLiked loadExperiencesLiked;
  LoadExperiencesDone loadExperiencesDone;
  LoadExperiencesCreated loadExperiencesCreated;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadExperiencesLiked = getIt<LoadExperiencesLiked>();
      loadExperiencesDone = getIt<LoadExperiencesDone>();
      loadExperiencesCreated = getIt<LoadExperiencesCreated>();
    },
  );
  final user = getValidUser();
  final experiences = {Experience.empty()};
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<ProfileExperiencesWatcherBloc>(),
    skip: 0,
    expect: [const ProfileExperiencesWatcherState.initial()],
  );
  group(
    "Testing watchExperiencesDoneStarted event",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () async {
          when(loadExperiencesDone.call(any)).thenAnswer((_) => createStream(right(experiences)));
          return getIt<ProfileExperiencesWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileExperiencesWatcherEvent.watchExperiencesDoneStarted(user));
          // This shouldn't be necessary, but it seems bloc_test "ignores" when events are added from the bloc itself
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
        build: () async {
          when(loadExperiencesDone.call(any)).thenAnswer((_) => createStream(left(failure)));
          return getIt<ProfileExperiencesWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileExperiencesWatcherEvent.watchExperiencesDoneStarted(user));
          // This shouldn't be necessary, but it seems bloc_test "ignores" when events are added from the bloc itself
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
        build: () async {
          when(loadExperiencesLiked.call(any)).thenAnswer((_) => createStream(right(experiences)));
          return getIt<ProfileExperiencesWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileExperiencesWatcherEvent.watchExperiencesLikedStarted(user));
          // This shouldn't be necessary, but it seems bloc_test "ignores" when events are added from the bloc itself
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
        build: () async {
          when(loadExperiencesLiked.call(any)).thenAnswer((_) => createStream(left(failure)));
          return getIt<ProfileExperiencesWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileExperiencesWatcherEvent.watchExperiencesLikedStarted(user));
          // This shouldn't be necessary, but it seems bloc_test "ignores" when events are added from the bloc itself
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
        build: () async {
          when(loadExperiencesCreated.call(any)).thenAnswer((_) => createStream(right(experiences)));
          return getIt<ProfileExperiencesWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user));
          // This shouldn't be necessary, but it seems bloc_test "ignores" when events are added from the bloc itself
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
        build: () async {
          when(loadExperiencesCreated.call(any)).thenAnswer((_) => createStream(left(failure)));
          return getIt<ProfileExperiencesWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user));
          // This shouldn't be necessary, but it seems bloc_test "ignores" when events are added from the bloc itself
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
