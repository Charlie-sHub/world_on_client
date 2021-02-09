import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';
import 'package:worldon/domain/experience_navigation/use_case/reward_user.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  ExperienceNavigationRepositoryInterface mockExperienceNavigationRepository;
  RewardUser useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockExperienceNavigationRepository = getIt<ExperienceNavigationRepositoryInterface>();
      useCase = RewardUser(mockExperienceNavigationRepository);
    },
  );
  final params = Params(
    experience: Experience.empty(),
  );
  const _experiencePointsAwarded = 100;
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockExperienceNavigationRepository.rewardUser(any)).thenAnswer((_) async => right(_experiencePointsAwarded));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockExperienceNavigationRepository);
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
          when(mockExperienceNavigationRepository.rewardUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceNavigationRepository);
        },
      );
      test(
        TestDescription.notFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockExperienceNavigationRepository.rewardUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceNavigationRepository);
        },
      );
    },
  );
}

void _verifyInteractions(ExperienceNavigationRepositoryInterface mockExperienceNavigationRepository) {
  verify(mockExperienceNavigationRepository.rewardUser(any));
  verifyNoMoreInteractions(mockExperienceNavigationRepository);
}
