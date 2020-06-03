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
  // TODO: Change the rest of the deletion/removing use cases so they ensure the authorization of the user
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
  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            user: creatorUser,
            experience: experience,
          ));
          // Assert
          expect(result, right(null));
          verify(mockProfileRepository.deleteExperience(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            user: admin,
            experience: experience,
          ));
          // Assert
          expect(result, right(null));
          verify(mockProfileRepository.deleteExperience(any));
          verifyNoMoreInteractions(mockProfileRepository);
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
          final result = await useCase(Params(
            user: randomUser,
            experience: experience,
          ));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            user: creatorUser,
            experience: experience,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.deleteExperience(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}
