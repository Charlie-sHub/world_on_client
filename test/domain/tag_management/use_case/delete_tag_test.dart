import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';
import 'package:worldon/domain/tag_management/use_case/delete_tag.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  TagManagementRepositoryInterface mockTagManagementRepository;
  GetLoggedInUser getLoggedInUser;
  DeleteTag useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockTagManagementRepository = getIt<TagManagementRepositoryInterface>();
      getLoggedInUser = getIt<GetLoggedInUser>();
      useCase = DeleteTag(mockTagManagementRepository);
    },
  );
  final randomUser = User.empty().copyWith(id: 1, adminPowers: false);
  final creatorUser = User.empty().copyWith(id: 2, adminPowers: false);
  final admin = User.empty().copyWith(id: 3, adminPowers: true);
  final tag = Tag.empty().copyWith(creator: creatorUser);
  final params = Params(tag: tag);

  group(
    TestDescription.authorization,
    () {
      test(
        "${TestDescription.returnNothing}, testing with the creator",
        () async {
          // Arrange
          when(mockTagManagementRepository.removeTag(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(creatorUser));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockTagManagementRepository);
        },
      );
      test(
        "${TestDescription.returnNothing}, testing with the admin",
        () async {
          // Arrange
          when(mockTagManagementRepository.removeTag(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(admin));
          // Act
          final result = await useCase(params);
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
          when(mockTagManagementRepository.removeTag(any)).thenAnswer((_) async => left(failure));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(creatorUser));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockTagManagementRepository);
        },
      );
      test(
        "${TestDescription.unAuthorized}  with no randomUser",
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
        "${TestDescription.unAuthorized}  with no user",
        () async {
          // Arrange
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
        },
      );
    },
  );
}

void _verifyInteractions(TagManagementRepositoryInterface mockTagManagementRepository) {
  verify(mockTagManagementRepository.removeTag(any));
  verifyNoMoreInteractions(mockTagManagementRepository);
}
