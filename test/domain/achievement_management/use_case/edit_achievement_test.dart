import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/achievement_management/use_case/edit_achievement.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  AchievementRepositoryInterface mockAchievementRepository;
  EditAchievement useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockAchievementRepository = getIt<AchievementRepositoryInterface>();
      useCase = getIt<EditAchievement>();
    },
  );
  final randomUser = User.empty().copyWith(id: 1, adminPowers: false);
  final creatorUser = User.empty().copyWith(id: 2, adminPowers: false);
  final admin = User.empty().copyWith(id: 3, adminPowers: true);
  final name = Name("Test Achievement");
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      achievement: Achievement.empty().copyWith(creator: creatorUser),
    );
  }

  group(
    TestDescription.authorization,
    () {
      test(
        "${TestDescription.returnNothing}, testing with the creator",
        () async {
          // Arrange
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        "${TestDescription.returnNothing}, testing with the admin",
        () async {
          // Arrange
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => right(unit));
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
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        TestDescription.nameAlreadyInUse,
        () async {
          // Arrange
          final failure = Failure.coreData(CoreDataFailure.nameAlreadyInUse(name: name));
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        TestDescription.unAuthorized,
        () async {
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
          // verifyZeroInteractions(mockAchievementRepository);
        },
      );
    },
  );
}

void _verifyInteractions(AchievementRepositoryInterface mockAchievementRepository) {
  verify(mockAchievementRepository.editAchievement(any));
  verifyNoMoreInteractions(mockAchievementRepository);
}
