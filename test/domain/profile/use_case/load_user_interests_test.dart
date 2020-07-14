import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';
import 'package:worldon/domain/profile/use_case/load_user_interests.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  ProfileRepositoryInterface mockProfileRepository;
  LoadUserInterests useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockProfileRepository = getIt<ProfileRepositoryInterface>();
      useCase = LoadUserInterests(mockProfileRepository);
    },
  );
  final params = Params(userId: 1);
  final interests = KtSet.of(Tag.empty());
  test(
    "Should return a KtSet of Tags",
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
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) => createStream(left(failure)));
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
          when(mockProfileRepository.loadUserInterests(any)).thenAnswer((_) => createStream(left(failure)));
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

Future<Either<Failure, KtSet<Tag>>> _act(LoadUserInterests useCase, Params params) async {
  final resultStream = useCase(params);
  Either<Failure, KtSet<Tag>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(ProfileRepositoryInterface mockProfileRepository) {
  verify(mockProfileRepository.loadUserInterests(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
