import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/use_case/delete_cache.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../../lib/domain/core/repository/core_repository_mock.dart';
import '../../../test_descriptions.dart';

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
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockCoreRepository.deleteCache()).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockCoreRepository);
    },
  );
  test(
    TestDescription.cacheError,
    () async {
      // Arrange
      const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: TestDescription.errorString));
      when(mockCoreRepository.deleteCache()).thenAnswer((_) async => left(failure));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, left(failure));
      _verifyInteractions(mockCoreRepository);
    },
  );
}

void _verifyInteractions(MockCoreRepository mockCoreRepository) {
  verify(mockCoreRepository.deleteCache());
  verifyNoMoreInteractions(mockCoreRepository);
}
