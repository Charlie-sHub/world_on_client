import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/tag_management/use_case/edit_tag.dart';

import '../../../../lib/domain/tag_management/repository/tag_management_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockTagManagementRepository mockTagManagementRepository;
  EditTag useCase;
  setUp(
    () {
      mockTagManagementRepository = MockTagManagementRepository();
      useCase = EditTag(mockTagManagementRepository);
    },
  );
  final randomUser = User.empty().copyWith(id: 1, adminPowers: false);
  final creatorUser = User.empty().copyWith(id: 2, adminPowers: false);
  final admin = User.empty().copyWith(id: 3, adminPowers: true);
  final name = Name("Test");
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      tag: Tag.empty().copyWith(creator: creatorUser),
    );
  }

  group(
    TestDescription.authorization,
    () {
      test(
        "$TestDescription.returnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockTagManagementRepository.editTag(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockTagManagementRepository);
        },
      );
      test(
        "$TestDescription.returnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockTagManagementRepository.editTag(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockTagManagementRepository);
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
          when(mockTagManagementRepository.editTag(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagManagementRepository);
        },
      );
      test(
        TestDescription.nameAlreadyInUse,
        () async {
          // Arrange
          final failure = Failure.coreData(CoreDataFailure.nameAlreadyInUse(name: name));
          when(mockTagManagementRepository.editTag(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagManagementRepository);
        },
      );
      test(
        TestDescription.unAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
          verifyZeroInteractions(mockTagManagementRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockTagManagementRepository mockTagManagementRepository) {
  verify(mockTagManagementRepository.editTag(any));
  verifyNoMoreInteractions(mockTagManagementRepository);
}
