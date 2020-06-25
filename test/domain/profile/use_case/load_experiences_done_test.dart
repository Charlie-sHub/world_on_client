import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/profile/use_case/load_experiences_done.dart';

import '../../../constant_descriptions.dart';
import '../../core/methods/create_stream.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadExperiencesDone useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadExperiencesDone(mockProfileRepository);
    },
  );
  final params = Params(id: 1);
  final experiencesDone = {
    const Experience(
      id: null,
      name: null,
      description: null,
      imageURLs: null,
      coordinates: null,
      location: null,
      creator: null,
      difficulty: null,
      creationDate: null,
      modificationDate: null,
      comments: null,
      objectives: null,
      rewards: null,
      tags: null,
      likedBy: null,
      doneBy: null,
    ),
  };
  test(
    "Should return a Set of Experiences if everything goes well",
    () async {
      // Arrange
      when(mockProfileRepository.loadExperiencesDone(any)).thenAnswer((_) => createStream(right(experiencesDone)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(experiencesDone));
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
          when(mockProfileRepository.loadExperiencesDone(any)).thenAnswer((_) => createStream(left(failure)));
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
          when(mockProfileRepository.loadExperiencesDone(any)).thenAnswer((_) => createStream(left(failure)));
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
          when(mockProfileRepository.loadExperiencesDone(any)).thenAnswer((_) => createStream(left(failure)));
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

Future<Either<Failure, Set<Experience>>> _act(LoadExperiencesDone useCase, Params params) async {
  final resultStream = useCase(params);
  Either<Failure, Set<Experience>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.loadExperiencesDone(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
