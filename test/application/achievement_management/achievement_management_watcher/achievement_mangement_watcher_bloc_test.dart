import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/achievement_management/achievement_management_watcher/achievement_management_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/achievement_management/use_case/watch_all_achievements.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchAllAchievements getAllAchievements;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      getAllAchievements = getIt<WatchAllAchievements>();
    },
  );
  final achievementSet = KtSet.of(Achievement.empty());
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<AchievementManagementWatcherBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(getAllAchievements.call(any)).thenAnswer((_) => createStream(right(achievementSet)));
      return getIt<AchievementManagementWatcherBloc>();
    },
    act: (bloc) async => bloc.add(const AchievementManagementWatcherEvent.watchAllAchievementsStarted()),
    verify: (_) async {
      verify(getAllAchievements.call(any));
      verifyNoMoreInteractions(getAllAchievements);
    },
    expect: [
      const AchievementManagementWatcherState.loadInProgress(),
      AchievementManagementWatcherState.loadSuccess(achievementSet),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () {
      when(getAllAchievements.call(any)).thenAnswer((_) => createStream(left(failure)));
      return getIt<AchievementManagementWatcherBloc>();
    },
    act: (bloc) async => bloc.add(const AchievementManagementWatcherEvent.watchAllAchievementsStarted()),
    verify: (_) async {
      verify(getAllAchievements.call(any));
      verifyNoMoreInteractions(getAllAchievements);
    },
    expect: [
      const AchievementManagementWatcherState.loadInProgress(),
      const AchievementManagementWatcherState.loadFailure(failure),
    ],
  );
}
