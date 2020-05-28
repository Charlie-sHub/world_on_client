import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/un_block_user.dart';

import '../../../constants.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  UnBlockUser useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = UnBlockUser(mockProfileRepository);
    },
  );
  const blockerId = 1;
  const blockedId = 2;
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockProfileRepository.unBlockUser(
        blockedId: anyNamed("blockedId"),
        blockerId: anyNamed("blockerId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(
        blockedId: blockedId,
        blockerId: blockerId,
      ));
      // Assert
      expect(result, right(null));
      verify(mockProfileRepository.unBlockUser(
        blockedId: anyNamed("blockedId"),
        blockerId: anyNamed("blockerId"),
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
          when(mockProfileRepository.unBlockUser(
            blockedId: anyNamed("blockedId"),
            blockerId: anyNamed("blockerId"),
          )).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            blockedId: blockedId,
            blockerId: blockerId,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.unBlockUser(
            blockedId: anyNamed("blockedId"),
            blockerId: anyNamed("blockerId"),
          ));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}
