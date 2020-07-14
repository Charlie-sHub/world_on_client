import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/profile_achievements_watcher/profile_achievements_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/profile/use_case/load_user_achievements.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  LoadUserAchievements loadUserAchievements;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadUserAchievements = getIt<LoadUserAchievements>();
    },
  );
  final achievements = KtSet.of(Achievement.empty());
  final user = getValidUser().copyWith(achievements: achievements.asSet());
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<ProfileAchievementsWatcherBloc>(),
    skip: 0,
    expect: [const ProfileAchievementsWatcherState.initial()],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () async {
      when(loadUserAchievements.call(any)).thenAnswer((realInvocation) => createStream(right(achievements)));
      return getIt<ProfileAchievementsWatcherBloc>();
    },
    act: (bloc) async => bloc.add(ProfileAchievementsWatcherEvent.watchAchievementsStarted(user)),
    verify: (_) async {
      verify(loadUserAchievements.call(any));
      verifyNoMoreInteractions(loadUserAchievements);
    },
    expect: [
      const ProfileAchievementsWatcherState.loadInProgress(),
      ProfileAchievementsWatcherState.loadSuccess(achievements),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () async {
      when(loadUserAchievements.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<ProfileAchievementsWatcherBloc>();
    },
    act: (bloc) async => bloc.add(ProfileAchievementsWatcherEvent.watchAchievementsStarted(user)),
    verify: (_) async {
      verify(loadUserAchievements.call(any));
      verifyNoMoreInteractions(loadUserAchievements);
    },
    expect: [
      const ProfileAchievementsWatcherState.loadInProgress(),
      const ProfileAchievementsWatcherState.loadFailure(failure),
    ],
  );
}
