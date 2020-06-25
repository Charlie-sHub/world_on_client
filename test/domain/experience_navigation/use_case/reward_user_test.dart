import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/experience_navigation/use_case/reward_user.dart';

import '../../../constant_descriptions.dart';
import '../repository/mock_experience_navigation_repository.dart';

void main() {
  MockExperienceNavigationRepository mockExperienceNavigationRepository;
  RewardUser useCase;
  setUp(
    () {
      mockExperienceNavigationRepository = MockExperienceNavigationRepository();
      useCase = RewardUser(mockExperienceNavigationRepository);
    },
  );
  final params = Params(
    experienceId: 1,
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockExperienceNavigationRepository.rewardUser(any)).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockExperienceNavigationRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: errorString));
          when(mockExperienceNavigationRepository.rewardUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceNavigationRepository);
        },
      );
      test(
        descriptionNotFoundError,
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

void _verifyInteractions(MockExperienceNavigationRepository mockExperienceNavigationRepository) {
  verify(mockExperienceNavigationRepository.rewardUser(any));
  verifyNoMoreInteractions(mockExperienceNavigationRepository);
}
