import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';
import 'package:worldon/domain/tag_management/use_case/watch_tags_by_creator.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  TagCoreRepositoryInterface mockTagRepository;
  WatchTagsByCreator useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockTagRepository = getIt<TagCoreRepositoryInterface>();
      useCase = WatchTagsByCreator(mockTagRepository);
    },
  );
  final params = Params(creatorId: 1);
  final tagList = KtList.of(Tag.empty());
  test(
    "Should get a List of Tags by a given creator id",
    () async {
      // Arrange
      when(mockTagRepository.watchTagsByCreator(any)).thenAnswer((_) => createStream(right(tagList)));
      // Act
      final result = await _act(useCase, params);
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
          when(mockTagRepository.watchTagsByCreator(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
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
          when(mockTagRepository.watchTagsByCreator(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
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
          when(mockTagRepository.watchTagsByCreator(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagRepository);
        },
      );
    },
  );
}

Future<Either<Failure, KtList<Tag>>> _act(WatchTagsByCreator useCase, Params params) async {
  final resultStream = useCase(params);
  Either<Failure, KtList<Tag>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(TagCoreRepositoryInterface mockTagRepository) {
  verify(mockTagRepository.watchTagsByCreator(any));
  verifyNoMoreInteractions(mockTagRepository);
}
