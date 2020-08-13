import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';
import 'package:worldon/domain/tag_management/use_case/watch_all_tags.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  TagCoreRepositoryInterface mockTagRepository;
  WatchAllTags useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockTagRepository = getIt<TagCoreRepositoryInterface>();
      useCase = WatchAllTags(mockTagRepository);
    },
  );
  final tagList = KtSet.of(Tag.empty());
  test(
    "Should get the full list of tags",
    () async {
      // Arrange
      when(mockTagRepository.watchAllTags()).thenAnswer((_) => createStream(right(tagList)));
      // Act
      final result = await _act(useCase);
      // Assert
      expect(result, right(tagList));
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
          when(mockTagRepository.watchAllTags()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase);
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
          when(mockTagRepository.watchAllTags()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase);
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
          when(mockTagRepository.watchAllTags()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagRepository);
        },
      );
    },
  );
}

Future<Either<Failure, KtSet<Tag>>> _act(WatchAllTags useCase) async {
  final resultStream = useCase(getIt<NoParams>());
  Either<Failure, KtSet<Tag>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(TagCoreRepositoryInterface mockTagRepository) {
  verify(mockTagRepository.watchAllTags());
  verifyNoMoreInteractions(mockTagRepository);
}
