import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
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
      _verifyInteractions(mockCoreRepository);
    },
  );
  test(
    descriptionCacheError,
    () async {
      // Arrange
      const coreFailure = CoreDataFailure.cacheError();
      when(mockCoreRepository.deleteCache()).thenAnswer((_) async => left(coreFailure));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, left(coreFailure));
      _verifyInteractions(mockCoreRepository);
    },
  );
}

void _verifyInteractions(MockCoreRepository mockCoreRepository) {
  verify(mockCoreRepository.deleteCache());
  verifyNoMoreInteractions(mockCoreRepository);
}
