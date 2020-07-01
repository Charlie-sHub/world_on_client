import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';
import 'package:worldon/domain/profile/use_case/delete_experience.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  ProfileRepositoryInterface mockProfileRepository;
  DeleteExperience useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockProfileRepository = getIt<ProfileRepositoryInterface>();
      useCase = getIt<DeleteExperience>();
    },
  );
  final randomUser = _setUpUser(id: 1, adminPowers: false);
  final creatorUser = _setUpUser(id: 2, adminPowers: false);
  final admin = _setUpUser(id: 3, adminPowers: true);
  final experience = Experience.empty().copyWith(creator: creatorUser);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      experience: experience,
    );
  }

  group(
    TestDescription.authorization,
    () {
      test(
        "${TestDescription.returnNothing}, testing with the creator",
        () async {
          // Arrange
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(creatorUser));
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
          // Act
          final result = await useCase(setUpParams(admin));
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
        "${TestDescription.unAuthorized}, random user deleting the experience",
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
          // verifyZeroInteractions(mockProfileRepository);
        },
      );
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
}

User _setUpUser({int id, bool adminPowers}) {
  return User.empty().copyWith(
    id: id,
    adminPowers: adminPowers,
  );
}

void _verifyInteractions(ProfileRepositoryInterface mockProfileRepository) {
  verify(mockProfileRepository.deleteExperience(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
