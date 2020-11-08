import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';
import 'package:worldon/domain/tag_management/use_case/get_tag_creator.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  TagCoreRepositoryInterface mockTagRepository;
  GetTagCreator useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockTagRepository = getIt<TagCoreRepositoryInterface>();
      useCase = GetTagCreator(mockTagRepository);
    },
  );
  final params = Params(id: UniqueId());
  final user = User.empty();
  test(
    "Should get the User that created a given Tag",
    () async {
      // Arrange
      when(mockTagRepository.getCreator(any)).thenAnswer((_) async => right(user));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(user));
      _verifyInteractions(mockTagRepository);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.cacheError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: TestDescription.errorString));
          when(mockTagRepository.getCreator(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagRepository);
        },
      );
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockTagRepository.getCreator(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagRepository);
        },
      );
      test(
        TestDescription.notFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockTagRepository.getCreator(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagRepository);
        },
      );
    },
  );
}

void _verifyInteractions(TagCoreRepositoryInterface mockTagRepository) {
  verify(mockTagRepository.getCreator(any));
  verifyNoMoreInteractions(mockTagRepository);
}
