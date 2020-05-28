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
  const userId = 1;
  final interests = {
    Tag(),
    Tag(),
    Tag(),
  };
  test(
    "Should return a Set of Tags",
    () async {
      // Arrange
      when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) async => right(interests));
      // Act
      final result = await useCase(Params(userId: userId));
      // Assert
      expect(result, right(interests));
      verify(mockProfileRepository.loadUserInterests(any));
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
          when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.loadUserInterests(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockProfileRepository.loadUserInterests(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockProfileRepository.loadUserInterests(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}
