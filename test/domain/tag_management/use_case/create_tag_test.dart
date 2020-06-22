import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/tag_management/use_case/create_tag.dart';

import '../../../constant_descriptions.dart';
import '../repository/mock_tag_management_repository.dart';

void main() {
  MockTagManagementRepository mockTagManagementRepository;
  CreateTag useCase;
  setUp(
    () {
      mockTagManagementRepository = MockTagManagementRepository();
      useCase = CreateTag(mockTagManagementRepository);
    },
  );
  final name = Name("Sports");
  final params = Params(
    creator: null,
    name: name,
  );
  test(
    descriptionReturnNothing,
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
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: errorString));
          when(mockTagManagementRepository.createTag(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagManagementRepository);
        },
      );
      test(
        descriptionNameAlreadyInUse,
        () async {
          // Arrange
          final failure = Failure.coreData(CoreDataFailure.nameAlreadyInUse(name: name));
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
