import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/profile/profile_achievements_watcher/profile_achievements_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/profile/use_case/watch_user_achievements.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchUserAchievements loadUserAchievements;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadUserAchievements = getIt<WatchUserAchievements>();
    },
  );
  final achievements = KtList.of(Achievement.empty());
  final user = getValidUser().copyWith(achievementsIds: achievements.map((_achievement) => _achievement.id).toSet().dart);
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ProfileAchievementsWatcherBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(loadUserAchievements.call(any)).thenAnswer((realInvocation) => createStream(right(achievements)));
      return getIt<ProfileAchievementsWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(ProfileAchievementsWatcherEvent.watchAchievementsStarted(user));
      bloc.add(ProfileAchievementsWatcherEvent.resultsReceived(right(achievements)));
    },
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
    build: () {
      when(loadUserAchievements.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<ProfileAchievementsWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(ProfileAchievementsWatcherEvent.watchAchievementsStarted(user));
      bloc.add(ProfileAchievementsWatcherEvent.resultsReceived(left(failure)));
    },
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
