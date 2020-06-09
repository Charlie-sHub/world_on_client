import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/delete_cache.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../constants.dart';
import '../repository/mock_core_repository.dart';

void main() {
  MockCoreRepository mockCoreRepository;
  DeleteCache useCase;
  setUp(
    () {
      mockCoreRepository = MockCoreRepository();
      useCase = DeleteCache(mockCoreRepository);
    },
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockCoreRepository.deleteCache()).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, right(null));
      verifyInteractions(mockCoreRepository);
    },
  );
  test(
    descriptionCacheError,
    () async {
      // Arrange
      const coreFailure = CoreFailure.cacheError();
      when(mockCoreRepository.deleteCache()).thenAnswer((_) async => left(coreFailure));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, left(coreFailure));
      verifyInteractions(mockCoreRepository);
    },
  );
}

void verifyInteractions(MockCoreRepository mockCoreRepository) {
  verify(mockCoreRepository.deleteCache());
  verifyNoMoreInteractions(mockCoreRepository);
}
