import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';
import 'package:worldon/domain/profile/use_case/follows_user.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  ProfileRepositoryInterface _mockProfileRepository;
  FollowsUser _useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      _mockProfileRepository = getIt<ProfileRepositoryInterface>();
      _useCase = FollowsUser(_mockProfileRepository);
    },
  );
  final _params = Params(userId: 1);
  test(
    "Should return true",
    () async {
      // Arrange
      when(_mockProfileRepository.followsUser(any)).thenAnswer((_) async => right(true));
      // Act
      final _result = await _useCase(_params);
      // Assert
      expect(_result, right(true));
      _verifyInteractions(_mockProfileRepository);
    },
  );
  test(
    "Should return false",
    () async {
      // Arrange
      when(_mockProfileRepository.followsUser(any)).thenAnswer((_) async => right(false));
      // Act
      final _result = await _useCase(_params);
      // Assert
      expect(_result, right(false));
      _verifyInteractions(_mockProfileRepository);
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
          when(_mockProfileRepository.followsUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final _result = await _useCase(_params);
          // Assert
          expect(_result, left(failure));
          _verifyInteractions(_mockProfileRepository);
        },
      );
    },
  );
}

void _verifyInteractions(ProfileRepositoryInterface mockProfileRepository) {
  verify(mockProfileRepository.followsUser(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
