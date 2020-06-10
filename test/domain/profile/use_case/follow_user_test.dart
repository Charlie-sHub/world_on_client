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
  final params = Params(
    userId: 1,
    userToFollowId: 2,
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockProfileRepository.followUser(
        userId: anyNamed("userId"),
        userToFollowId: anyNamed("userToFollowId"),
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
          const coreFailure = CoreFailure.serverError();
          when(mockProfileRepository.followUser(
            userId: anyNamed("userId"),
            userToFollowId: anyNamed("userToFollowId"),
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
  verify(mockProfileRepository.followUser(
    userId: anyNamed("userId"),
    userToFollowId: anyNamed("userToFollowId"),
  ));
  verifyNoMoreInteractions(mockProfileRepository);
}
