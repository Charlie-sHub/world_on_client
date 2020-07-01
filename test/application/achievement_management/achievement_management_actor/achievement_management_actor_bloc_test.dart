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
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  AchievementManagementActorBloc bloc;
  DeleteAchievement useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      useCase = getIt<DeleteAchievement>();
      bloc = getIt<AchievementManagementActorBloc>();
    },
  );
  final deletionEvent = AchievementManagementActorEvent.deleted(
    userRequesting: User.empty(),
    achievement: Achievement.empty(),
  );
  test(
    TestDescription.shouldEmitInitial,
    () async {
      // Assert
      expect(bloc.initialState, const AchievementManagementActorState.initial());
    },
  );
  group(
    "Delete Event Tests",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () async {
          when(useCase.call(any)).thenAnswer((_) async => right<Failure, Unit>(unit));
          return bloc;
        },
        act: (bloc) async => bloc.add(deletionEvent),
        expect: [
          const AchievementManagementActorState.actionInProgress(),
          const AchievementManagementActorState.deletionSuccess(),
        ],
      );
      test(
        TestDescription.verifyCallToUseCase,
        () async {
          // Arrange
          when(useCase.call(any)).thenAnswer((_) async => right<Failure, Unit>(unit));
          // Act
          bloc.add(deletionEvent);
          await untilCalled(useCase.call(any));
          // Assert
          verify(useCase.call(any));
          verifyNoMoreInteractions(useCase);
        },
      );
      test(
        TestDescription.shouldEmitSuccess,
        () async {
          // Arrange
          when(useCase.call(any)).thenAnswer((_) async => right<Failure, Unit>(unit));
          final states = [
            const AchievementManagementActorState.actionInProgress(),
            const AchievementManagementActorState.deletionSuccess(),
          ];
          // Assert
          expectLater(bloc.mapEventToState(deletionEvent), emitsInOrder(states));
        },
      );
      test(
        TestDescription.shouldEmitFailure,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(useCase.call(any)).thenAnswer((_) async => left<Failure, Unit>(failure));
          final states = [
            const AchievementManagementActorState.actionInProgress(),
            const AchievementManagementActorState.deletionFailure(failure),
          ];
          // Assert
          expectLater(bloc.mapEventToState(deletionEvent), emitsInOrder(states));
        },
      );
    },
  );
}
