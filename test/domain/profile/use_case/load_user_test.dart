import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/load_user.dart';

import '../../../constant_descriptions.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadUser useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadUser(mockProfileRepository);
    },
  );
  const id = 1;
  final user = User.empty().copyWith(id: id);
  test(
    "Should return a User if everything goes well",
    () async {
      // Arrange
      when(mockProfileRepository.loadUser(any)).thenAnswer((_) async => right(user));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(user));
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
          when(mockProfileRepository.loadUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(Params(id: id));
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
          when(mockProfileRepository.loadUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(Params(id: id));
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
          when(mockProfileRepository.loadUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.loadUser(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
