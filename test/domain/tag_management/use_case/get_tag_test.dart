import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/tag_management/use_case/get_tag.dart';

import '../../../constants.dart';
import '../repository/mock_tag_management_repository.dart';

void main() {
  MockTagManagementRepository mockTagManagementRepository;
  GetTag useCase;
  setUp(
    () {
      mockTagManagementRepository = MockTagManagementRepository();
      useCase = GetTag(mockTagManagementRepository);
    },
  );
  final params = Params(id: 1);
  final tag = Tag(
    id: 1,
    creationDate: PastDate(DateTime.now()),
    creator: null,
    modificationDate: PastDate(DateTime.now()),
    name: Name("Sports"),
  );
  test(
    "Should get the Tag with a given id if successful",
    () async {
      // Arrange
      when(mockTagManagementRepository.getTag(any)).thenAnswer((_) async => right(tag));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(tag));
      verifyInteractions(mockTagManagementRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockTagManagementRepository.getTag(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockTagManagementRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.serverError();
          when(mockTagManagementRepository.getTag(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockTagManagementRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockTagManagementRepository mockTagManagementRepository) {
  verify(mockTagManagementRepository.getTag(any));
  verifyNoMoreInteractions(mockTagManagementRepository);
}
