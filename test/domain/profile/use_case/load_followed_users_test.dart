import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/load_followed_users.dart';

import '../../../../lib/domain/profile/repository/profile_repository_mock.dart';
import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadFollowedUsers useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadFollowedUsers(mockProfileRepository);
    },
  );
  final params = Params(id: 1);
  final followedUsers = {User.empty()};
  test(
    "Should return a Set of Users",
    () async {
      // Arrange
      when(mockProfileRepository.loadFollowedUsers(any)).thenAnswer((_) => createStream(right(followedUsers)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(followedUsers));
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
          when(mockProfileRepository.loadFollowedUsers(any)).thenAnswer((_) => createStream(left(failure)));
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
          when(mockProfileRepository.loadFollowedUsers(any)).thenAnswer((_) => createStream(left(failure)));
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
          when(mockProfileRepository.loadFollowedUsers(any)).thenAnswer((_) => createStream(left(failure)));
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

Future<Either<Failure, Set<User>>> _act(LoadFollowedUsers useCase, Params params) async {
  final resultStream = useCase(params);
  Either<Failure, Set<User>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.loadFollowedUsers(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
