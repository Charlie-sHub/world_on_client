import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
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
  const id = 1;
  final tag = Tag(
    id: 1,
    creationDate: PastDate(DateTime.now()),
    creator: User(),
    modificationDate: PastDate(DateTime.now()),
    name: Name("Sports"),
  );
  test(
    "Should get the Tag with a given id if successful",
    () async {
      // Arrange
      when(mockTagManagementRepository.getTag(any)).thenAnswer((_) async => right(tag));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(tag));
      verify(mockTagManagementRepository.getTag(any));
      verifyNoMoreInteractions(mockTagManagementRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockTagManagementRepository.getTag(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockTagManagementRepository.getTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockTagManagementRepository.getTag(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagManagementRepository.getTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
        },
      );
    },
  );
}
