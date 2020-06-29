import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/search/use_case/search_users_by_username.dart';

import '../../../../lib/domain/search/repository/search_repository_mock.dart';
import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  MockSearchRepository mockSearchRepository;
  SearchUsersByUsername useCase;
  setUp(
    () {
      mockSearchRepository = MockSearchRepository();
      useCase = SearchUsersByUsername(mockSearchRepository);
    },
  );
  final params = Params(username: Name("test"));
  final usersFoundByUsername = {User.empty()};
  test(
    "Should return a Set of Users",
    () async {
      // Arrange
      when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) => createStream(right(usersFoundByUsername)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(usersFoundByUsername));
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
          when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) => createStream(left(failure)));
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
          when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) => createStream(left(failure)));
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
          when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) => createStream(left(failure)));
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

Future<Either<Failure, Set<User>>> _act(SearchUsersByUsername useCase, Params params) async {
  final resultStream = useCase(params);
  Either<Failure, Set<User>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(MockSearchRepository mockSearchRepository) {
  verify(mockSearchRepository.searchUsersByUserName(any));
  verifyNoMoreInteractions(mockSearchRepository);
}
