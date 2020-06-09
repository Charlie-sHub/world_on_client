import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/delete_experience.dart';

import '../../../constants.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  DeleteExperience useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = DeleteExperience(mockProfileRepository);
    },
  );
  final randomUser = User(id: 1, adminPowers: false);
  final creatorUser = User(id: 2, adminPowers: false);
  final admin = User(id: 3, adminPowers: true);
  final experience = Experience(id: 1, creator: creatorUser);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      experience: experience,
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(null));
          verifyInteractions(mockProfileRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(null));
          verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionUnAuthorized, random user deleting the experience",
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.serverError();
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.deleteExperience(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
