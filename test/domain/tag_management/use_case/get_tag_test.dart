import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';
import 'package:worldon/domain/tag_management/use_case/get_tag.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  TagManagementRepositoryInterface mockTagManagementRepository;
  GetTag useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockTagManagementRepository = getIt<TagManagementRepositoryInterface>();
      useCase = GetTag(mockTagManagementRepository);
    },
  );
  final id = UniqueId();
  final params = Params(id: id);
  final tag = Tag.empty().copyWith(id: id);
  test(
    "Should get the Tag with a given id if successful",
    () async {
      // Arrange
      when(mockTagManagementRepository.getTag(any)).thenAnswer((_) async => right(tag));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(tag));
      _verifyInteractions(mockTagManagementRepository);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.notFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockTagManagementRepository.getTag(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagManagementRepository);
        },
      );
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockTagManagementRepository.getTag(any)).thenAnswer((_) async => left(failure));
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

void _verifyInteractions(TagManagementRepositoryInterface mockTagManagementRepository) {
  verify(mockTagManagementRepository.getTag(any));
  verifyNoMoreInteractions(mockTagManagementRepository);
}
