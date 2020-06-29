import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/tag_management/use_case/create_tag.dart';

import '../../../../lib/domain/tag_management/repository/tag_management_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockTagManagementRepository mockTagManagementRepository;
  CreateTag useCase;
  setUp(
    () {
      mockTagManagementRepository = MockTagManagementRepository();
      useCase = CreateTag(mockTagManagementRepository);
    },
  );
  final params = Params(tag: Tag.empty());
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockTagManagementRepository.createTag(any)).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockTagManagementRepository);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockTagManagementRepository.createTag(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagManagementRepository);
        },
      );
      test(
        TestDescription.nameAlreadyInUse,
        () async {
          // Arrange
          final failure = Failure.coreData(CoreDataFailure.nameAlreadyInUse(name: params.tag.name));
          when(mockTagManagementRepository.createTag(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagManagementRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockTagManagementRepository mockTagManagementRepository) {
  verify(mockTagManagementRepository.createTag(any));
  verifyNoMoreInteractions(mockTagManagementRepository);
}
