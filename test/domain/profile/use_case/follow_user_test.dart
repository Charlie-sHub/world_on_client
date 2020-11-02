import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/profile/failures/profile_domain_failure.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';
import 'package:worldon/domain/profile/use_case/follow_user.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  ProfileRepositoryInterface mockProfileRepository;
  GetLoggedInUser getLoggedInUser;
  FollowUser useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockProfileRepository = getIt<ProfileRepositoryInterface>();
      getLoggedInUser = getIt<GetLoggedInUser>();
      useCase = FollowUser(mockProfileRepository);
    },
  );
  final currentUser = getValidUser();
  final params = Params(userToFollowId: 2);
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockProfileRepository.followUser(any)).thenAnswer((_) async => right(unit));
      when(getLoggedInUser.call(any)).thenAnswer((_) async => some(currentUser));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockProfileRepository, getLoggedInUser);
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
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(currentUser));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository, getLoggedInUser);
        },
      );
      test(
        "Should return followItself",
        () async {
          // Arrange
          const failure = Failure.profileDomain(ProfileDomainFailure.followItself());
          when(mockProfileRepository.followUser(any)).thenAnswer((_) async => left(failure));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(currentUser.copyWith(id: 2)));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}

void _verifyInteractions(ProfileRepositoryInterface mockProfileRepository, GetLoggedInUser getLoggedInUser) {
  verify(mockProfileRepository.followUser(any));
  verifyNoMoreInteractions(mockProfileRepository);
  verify(getLoggedInUser.call(any));
  verifyNoMoreInteractions(getLoggedInUser);
}
