import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';
import 'package:worldon/domain/search/use_case/watch_search_tags_by_name.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  SearchRepositoryInterface mockSearchRepository;
  WatchSearchTagsByName useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockSearchRepository = getIt<SearchRepositoryInterface>();
      useCase = WatchSearchTagsByName(mockSearchRepository);
    },
  );
  final params = Params(name: SearchTerm("Test"));
  final tagsFound = KtList.of(Tag.empty());
  test(
    "Should return a Set of Tags",
    () async {
      // Arrange
      when(mockSearchRepository.watchSearchTagsByName(any)).thenAnswer((_) => createStream(right(tagsFound)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(tagsFound));
      _verifyInteractions(mockSearchRepository);
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
          when(mockSearchRepository.watchSearchTagsByName(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockSearchRepository);
        },
      );
      test(
        TestDescription.cacheError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: TestDescription.errorString));
          when(mockSearchRepository.watchSearchTagsByName(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockSearchRepository);
        },
      );
      test(
        TestDescription.notFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockSearchRepository.watchSearchTagsByName(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockSearchRepository);
        },
      );
    },
  );
}

Future<Either<Failure, KtList<Tag>>> _act(WatchSearchTagsByName useCase, Params params) async {
  final resultStream = useCase(params);
  Either<Failure, KtList<Tag>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(SearchRepositoryInterface mockSearchRepository) {
  verify(mockSearchRepository.watchSearchTagsByName(any));
  verifyNoMoreInteractions(mockSearchRepository);
}
