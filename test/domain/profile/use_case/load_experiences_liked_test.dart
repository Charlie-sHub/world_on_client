import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/load_experiences_liked.dart';

import '../../../constants.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadExperiencesLiked useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadExperiencesLiked(mockProfileRepository);
    },
  );
  const id = 1;
  final experiencesLiked = {
    Experience(),
    Experience(),
    Experience(),
  };
  test(
    "Should return a Set of Experiences if everything goes well",
    () async {
      // Arrange
      when(mockProfileRepository.loadExperiencesLiked(any)).thenAnswer((_) async => right(experiencesLiked));

      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(experiencesLiked));
      verify(mockProfileRepository.loadExperiencesLiked(any));
      verifyNoMoreInteractions(mockProfileRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockProfileRepository.loadExperiencesLiked(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.loadExperiencesLiked(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockProfileRepository.loadExperiencesLiked(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockProfileRepository.loadExperiencesLiked(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockProfileRepository.loadExperiencesLiked(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockProfileRepository.loadExperiencesLiked(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}
