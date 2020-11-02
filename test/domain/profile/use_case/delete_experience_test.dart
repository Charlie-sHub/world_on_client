import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';
import 'package:worldon/domain/profile/use_case/delete_experience.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  ProfileRepositoryInterface mockProfileRepository;
  GetLoggedInUser getLoggedInUser;
  DeleteExperience useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockProfileRepository = getIt<ProfileRepositoryInterface>();
      getLoggedInUser = getIt<GetLoggedInUser>();
      useCase = DeleteExperience(mockProfileRepository);
    },
  );
  final randomUser = User.empty().copyWith(id: 1, adminPowers: false);
  final creatorUser = User.empty().copyWith(id: 2, adminPowers: false);
  final admin = User.empty().copyWith(id: 3, adminPowers: true);
  final experience = Experience.empty().copyWith(creator: creatorUser);
  final params = Params(experience: experience);

  group(
    TestDescription.authorization,
    () {
      test(
        "${TestDescription.returnNothing}, testing with the creator",
        () async {
          // Arrange
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(creatorUser));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        "${TestDescription.returnNothing}, testing with the admin",
        () async {
          // Arrange
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(admin));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockProfileRepository);
        },
      );
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
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => left(failure));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(creatorUser));

          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        "${TestDescription.unAuthorized} with randomUser",
        () async {
          // Arrange
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(randomUser));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
        },
      );
      test(
        TestDescription.throwUnAuthenticated,
        () async {
          // Arrange
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          // Act
          try {
            await useCase(params);
            fail(TestDescription.notThrown);
          } catch (error) {
            // Assert
            expect(error, isInstanceOf<UnAuthenticatedError>());
          }
        },
      );
    },
  );
}

void _verifyInteractions(ProfileRepositoryInterface mockProfileRepository) {
  verify(mockProfileRepository.deleteExperience(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
