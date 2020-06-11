import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
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
  final params = Params(
    blockedId: 1,
    blockerId: 2,
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockProfileRepository.unBlockUser(
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
          const coreFailure = CoreDataFailure.serverError();
          when(mockProfileRepository.unBlockUser(
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
  verify(mockProfileRepository.unBlockUser(
    blockedId: anyNamed("blockedId"),
    blockerId: anyNamed("blockerId"),
  ));
  verifyNoMoreInteractions(mockProfileRepository);
}
