import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/profile/use_case/follow_user.dart';

import '../../../../lib/domain/profile/repository/profile_repository_mock.dart';
import '../../../test_descriptions.dart';

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
    userToFollowId: 2,
  );
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockProfileRepository.followUser(any)).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
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
          when(mockProfileRepository.followUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.followUser(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
