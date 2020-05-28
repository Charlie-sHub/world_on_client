import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/follow_user.dart';

import '../../../constants.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  FollowUser useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = FollowUser(mockProfileRepository);
    },
  );
  const userToFollowId = 1;
  const userId = 2;
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockProfileRepository.followUser(
        userId: anyNamed("userId"),
        userToFollowId: anyNamed("userToFollowId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(
        userId: userId,
        userToFollowId: userToFollowId,
      ));
      // Assert
      expect(result, right(null));
      verify(mockProfileRepository.followUser(
        userId: anyNamed("userId"),
        userToFollowId: anyNamed("userToFollowId"),
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
          when(mockProfileRepository.followUser(
            userId: anyNamed("userId"),
            userToFollowId: anyNamed("userToFollowId"),
          )).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            userId: userId,
            userToFollowId: userToFollowId,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.followUser(
            userId: anyNamed("userId"),
            userToFollowId: anyNamed("userToFollowId"),
          ));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}
