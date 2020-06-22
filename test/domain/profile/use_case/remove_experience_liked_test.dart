import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/profile/use_case/remove_experience_liked.dart';

import '../../../constant_descriptions.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  RemoveExperienceLiked useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = RemoveExperienceLiked(mockProfileRepository);
    },
  );
  final params = Params(
    experienceId: 1,
    userId: 2,
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockProfileRepository.removeExperienceLiked(
        experienceId: anyNamed("experienceId"),
        userId: anyNamed("userId"),
      )).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockProfileRepository);
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
          when(mockProfileRepository.removeExperienceLiked(
            experienceId: anyNamed("experienceId"),
            userId: anyNamed("userId"),
          )).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.removeExperienceLiked(
    experienceId: anyNamed("experienceId"),
    userId: anyNamed("userId"),
  ));
  verifyNoMoreInteractions(mockProfileRepository);
}
