import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/load_user_interests.dart';

import '../../../constants.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadUserInterests useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadUserInterests(mockProfileRepository);
    },
  );
  final params = Params(userId: 1);
  final interests = {
    const Tag(
      id: null,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
  };
  test(
    "Should return a Set of Tags",
    () async {
      // Arrange
      when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) async => right(interests));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(interests));
      verifyInteractions(mockProfileRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.serverError();
          when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.cacheError();
          when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.loadUserInterests(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
