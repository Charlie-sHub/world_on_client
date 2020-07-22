import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/achievement_management/achievement_management_actor/achievement_management_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/achievement_management/use_case/delete_achievement.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  DeleteAchievement deleteAchievement;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      deleteAchievement = getIt<DeleteAchievement>();
    },
  );
  final deletionEvent = AchievementManagementActorEvent.deleted(Achievement.empty());
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<AchievementManagementActorBloc>(),
    expect: [],
  );
  group(
    TestDescription.deleteEventTests,
    () {
      const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(deleteAchievement.call(any)).thenAnswer((_) async => right(unit));
          return getIt<AchievementManagementActorBloc>();
        },
        act: (bloc) async => bloc.add(deletionEvent),
        verify: (_) async {
          verify(deleteAchievement.call(any));
          verifyNoMoreInteractions(deleteAchievement);
        },
        expect: [
          const AchievementManagementActorState.actionInProgress(),
          const AchievementManagementActorState.deletionSuccess(),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(deleteAchievement.call(any)).thenAnswer((_) async => left(failure));
          return getIt<AchievementManagementActorBloc>();
        },
        act: (bloc) async => bloc.add(deletionEvent),
        verify: (_) async {
          verify(deleteAchievement.call(any));
          verifyNoMoreInteractions(deleteAchievement);
        },
        expect: [
          const AchievementManagementActorState.actionInProgress(),
          const AchievementManagementActorState.deletionFailure(failure),
        ],
      );
    },
  );
}
