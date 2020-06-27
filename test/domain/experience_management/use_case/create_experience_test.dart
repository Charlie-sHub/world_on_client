import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/location/location.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/experience_management/use_case/create_experience.dart';

import '../../../constant_descriptions.dart';
import '../repository/mock_experience_management_repository.dart';

void main() {
  MockExperienceManagementRepository mockExperienceManagementRepository;
  CreateExperience useCase;
  setUp(
    () {
      mockExperienceManagementRepository = MockExperienceManagementRepository();
      useCase = CreateExperience(mockExperienceManagementRepository);
    },
  );
  final params = Params(
    name: Name("test"),
    description: EntityDescription("It's a test"),
    imageNames: const {"test.jpg"},
    coordinates: Coordinates.empty(),
    location: Location.empty(),
    creator: User.empty(),
    difficulty: Difficulty(1),
    objectives: ObjectiveSet(KtSet.empty()),
    rewards: RewardSet(KtSet.empty()),
    tags: TagSet(KtSet.empty()),
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockExperienceManagementRepository.createExperience(any)).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockExperienceManagementRepository);
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
          when(mockExperienceManagementRepository.createExperience(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceManagementRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockExperienceManagementRepository mockExperienceManagementRepository) {
  verify(mockExperienceManagementRepository.createExperience(any));
  verifyNoMoreInteractions(mockExperienceManagementRepository);
}
