import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';
import 'package:worldon/domain/experience_management/use_case/edit_experience.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  ExperienceManagementRepositoryInterface mockExperienceManagementRepository;
  EditExperience useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockExperienceManagementRepository = getIt<ExperienceManagementRepositoryInterface>();
      useCase = getIt<EditExperience>();
    },
  );
  final randomUser = User.empty().copyWith(id: 1, adminPowers: false);
  final creatorUser = User.empty().copyWith(id: 2, adminPowers: false);
  final admin = User.empty().copyWith(id: 3, adminPowers: true);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      experience: Experience.empty().copyWith(creator: creatorUser),
    );
  }

  group(
    TestDescription.authorization,
    () {
      test(
        "${TestDescription.returnNothing}, testing with the creator",
        () async {
          // Arrange
          when(mockExperienceManagementRepository.editExperience(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        "${TestDescription.returnNothing}, testing with the admin",
        () async {
          // Arrange
          when(mockExperienceManagementRepository.editExperience(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockExperienceManagementRepository);
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
          when(mockExperienceManagementRepository.editExperience(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        TestDescription.unAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
          // verifyZeroInteractions(mockExperienceManagementRepository);
        },
      );
    },
  );
}

void _verifyInteractions(ExperienceManagementRepositoryInterface mockExperienceManagementRepository) {
  verify(mockExperienceManagementRepository.editExperience(any));
  verifyNoMoreInteractions(mockExperienceManagementRepository);
}
