import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
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
  const userToUnFollowId = 1;
  const userId = 2;
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockProfileRepository.unFollowUser(
        userId: anyNamed("userId"),
        userToUnFollowId: anyNamed("userToUnFollowId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(
        userId: userId,
        userToUnFollowId: userToUnFollowId,
      ));
      // Assert
      expect(result, right(null));
      verify(mockProfileRepository.unFollowUser(
        userId: anyNamed("userId"),
        userToUnFollowId: anyNamed("userToUnFollowId"),
      ));
      verifyNoMoreInteractions(mockProfileRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockProfileRepository.unFollowUser(
            userId: anyNamed("userId"),
            userToUnFollowId: anyNamed("userToUnFollowId"),
          )).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            userId: userId,
            userToUnFollowId: userToUnFollowId,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.unFollowUser(
            userId: anyNamed("userId"),
            userToUnFollowId: anyNamed("userToUnFollowId"),
          ));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}
