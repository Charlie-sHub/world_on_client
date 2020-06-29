import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/profile/use_case/load_experiences_liked.dart';

import '../../../../lib/domain/profile/repository/profile_repository_mock.dart';
import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadExperiencesLiked useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadExperiencesLiked(mockProfileRepository);
    },
  );
  final params = Params(id: 1);
  final experiencesLiked = {Experience.empty()};
  test(
    "Should return a Set of Experiences if everything goes well",
    () async {
      // Arrange
      when(mockProfileRepository.loadExperiencesLiked(any)).thenAnswer((_) => createStream(right(experiencesLiked)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(experiencesLiked));
      _verifyInteractions(mockProfileRepository);
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
          when(mockProfileRepository.loadExperiencesLiked(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        TestDescription.cacheError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: TestDescription.errorString));
          when(mockProfileRepository.loadExperiencesLiked(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        TestDescription.notFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockProfileRepository.loadExperiencesLiked(any)).thenAnswer((_) => createStream(left(failure)));
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

Future<Either<Failure, Set<Experience>>> _act(LoadExperiencesLiked useCase, Params params) async {
  final resultStream = useCase(params);
  Either<Failure, Set<Experience>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.loadExperiencesLiked(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
