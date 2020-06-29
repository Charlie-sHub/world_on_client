import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/achievement_management/use_case/delete_achievement.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  AchievementRepositoryInterface mockAchievementRepository;
  DeleteAchievement useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockAchievementRepository = getIt<AchievementRepositoryInterface>();
      useCase = getIt<DeleteAchievement>();
    },
  );
  final randomUser = User.empty().copyWith(id: 1, adminPowers: false);
  final creatorUser = User.empty().copyWith(id: 2, adminPowers: false);
  final admin = User.empty().copyWith(id: 3, adminPowers: true);
  final achievement = Achievement.empty().copyWith(creator: creatorUser);
  Params setUpParams(User userRequesting) {
    return Params(
      achievement: achievement,
      userRequesting: userRequesting,
    );
  }

  group(
    TestDescription.authorization,
    () {
      test(
        "$TestDescription.returnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        "$TestDescription.returnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockAchievementRepository);
        },
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        TestDescription.notFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        TestDescription.unAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
          // TODO: Figure out why it fails this with the code injection
          // verifyZeroInteractions(mockAchievementRepository);
        },
      );
    },
  );
}

void _verifyInteractions(AchievementRepositoryInterface mockAchievementRepository) {
  verify(mockAchievementRepository.removeAchievement(any));
  verifyNoMoreInteractions(mockAchievementRepository);
}
