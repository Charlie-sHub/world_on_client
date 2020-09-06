import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';
import 'package:worldon/domain/tag_management/use_case/add_tag_to_interests.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  TagCoreRepositoryInterface mockTagCoreRepository;
  AddTagToInterests useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockTagCoreRepository = getIt<TagCoreRepositoryInterface>();
      useCase = AddTagToInterests(mockTagCoreRepository);
    },
  );
  final params = Params(tag: getValidTag());
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockTagCoreRepository.addTagToInterests(any)).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockTagCoreRepository);
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
          when(mockTagCoreRepository.addTagToInterests(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagCoreRepository);
        },
      );
    },
  );
}

void _verifyInteractions(TagCoreRepositoryInterface mockTagCoreRepository) {
  verify(mockTagCoreRepository.addTagToInterests(any));
  verifyNoMoreInteractions(mockTagCoreRepository);
}
