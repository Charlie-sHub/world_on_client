import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/profile/use_case/un_follow_user.dart';

import '../../../constants.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  UnFollowUser useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = UnFollowUser(mockProfileRepository);
    },
  );
  final params = Params(
    userId: 1,
    userToUnFollowId: 2,
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockProfileRepository.unFollowUser(
        userId: anyNamed("userId"),
        userToUnFollowId: anyNamed("userToUnFollowId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(null));
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
          const coreFailure = CoreDataFailure.serverError();
          when(mockProfileRepository.unFollowUser(
            userId: anyNamed("userId"),
            userToUnFollowId: anyNamed("userToUnFollowId"),
          )).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.unFollowUser(
    userId: anyNamed("userId"),
    userToUnFollowId: anyNamed("userToUnFollowId"),
  ));
  verifyNoMoreInteractions(mockProfileRepository);
}
