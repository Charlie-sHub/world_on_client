import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/block_user.dart';

import '../../../constants.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  BlockUser useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = BlockUser(mockProfileRepository);
    },
  );
  final params = Params(
    blockedId: 1,
    blockerId: 2,
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockProfileRepository.blockUser(
        blockedId: anyNamed("blockedId"),
        blockerId: anyNamed("blockerId"),
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
          when(mockProfileRepository.blockUser(
            blockedId: anyNamed("blockedId"),
            blockerId: anyNamed("blockerId"),
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
  verify(mockProfileRepository.blockUser(
    blockedId: anyNamed("blockedId"),
    blockerId: anyNamed("blockerId"),
  ));
  verifyNoMoreInteractions(mockProfileRepository);
}
