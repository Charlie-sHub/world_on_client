import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/profile/use_case/load_user_interests.dart';

import '../../../constant_descriptions.dart';
import '../../core/methods/create_stream.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadUserInterests useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadUserInterests(mockProfileRepository);
    },
  );
  final params = Params(userId: 1);
  final interests = {
    const Tag(
      id: null,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
  };
  test(
    "Should return a Set of Tags",
    () async {
      // Arrange
      when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) => createStream(right(interests)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(interests));
      _verifyInteractions(mockProfileRepository);
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
          when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: errorString));
          when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
}

Future<Either<Failure, Set<Tag>>> _act(LoadUserInterests useCase, Params params) async {
  final resultStream = useCase(params);
  Either<Failure, Set<Tag>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.loadUserInterests(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
