import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/tag_management/use_case/create_tag.dart';

import '../../../constants.dart';
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
  final params = Params(
    creator: User(),
    name: Name("Sports"),
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockTagManagementRepository.createTag(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(null));
      verify(mockTagManagementRepository.createTag(any));
      verifyNoMoreInteractions(mockTagManagementRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockTagManagementRepository.createTag(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagManagementRepository.createTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
        },
      );
      test(
        descriptionNameAlreadyInUse,
        () async {
          // Arrange
          when(mockTagManagementRepository.createTag(any)).thenAnswer((_) async => left(const CoreFailure.nameAlreadyInUse()));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(const CoreFailure.nameAlreadyInUse()));
          verify(mockTagManagementRepository.createTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
        },
      );
    },
  );
}
