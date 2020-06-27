import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/location/location.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/experience_management/use_case/edit_experience.dart';

import '../../../constant_descriptions.dart';
import '../repository/mock_experience_management_repository.dart';

void main() {
  MockExperienceManagementRepository mockExperienceManagementRepository;
  EditExperience useCase;
  setUp(
    () {
      mockExperienceManagementRepository = MockExperienceManagementRepository();
      useCase = EditExperience(mockExperienceManagementRepository);
    },
  );
  final randomUser = _setUpUser(id: 1, adminPowers: false);
  final creatorUser = _setUpUser(id: 2, adminPowers: false);
  final admin = _setUpUser(id: 3, adminPowers: true);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      id: 1,
      name: Name("test"),
      description: EntityDescription("It's a test"),
      imageNames: const {"test.jpg"},
      coordinates: Coordinates.empty(),
      location: Location.empty(),
      creator: creatorUser,
      difficulty: Difficulty(1),
      creationDate: PastDate(DateTime.now()),
      objectives: ObjectiveSet(KtSet.empty()),
      rewards: RewardSet(KtSet.empty()),
      tags: TagSet(KtSet.empty()),
      comments: <Comment>{},
      doneBy: <User>{},
      likedBy: <User>{},
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockExperienceManagementRepository.editExperience(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockExperienceManagementRepository.editExperience(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockExperienceManagementRepository);
        },
      );
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
          when(mockExperienceManagementRepository.editExperience(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        descriptionUnAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
          verifyZeroInteractions(mockExperienceManagementRepository);
        },
      );
    },
  );
}

User _setUpUser({int id, bool adminPowers}) {
  return User.empty().copyWith(
    id: id,
    adminPowers: adminPowers,
  );
}

void _verifyInteractions(MockExperienceManagementRepository mockExperienceManagementRepository) {
  verify(mockExperienceManagementRepository.editExperience(any));
  verifyNoMoreInteractions(mockExperienceManagementRepository);
}
