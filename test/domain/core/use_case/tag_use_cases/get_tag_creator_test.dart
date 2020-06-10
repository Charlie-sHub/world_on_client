import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/tag_use_cases/get_tag_creator.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

import '../../../../constants.dart';
import '../../repository/mock_tag_repository.dart';

void main() {
  MockTagRepository mockTagRepository;
  GetTagCreator useCase;
  setUp(
    () {
      mockTagRepository = MockTagRepository();
      useCase = GetTagCreator(mockTagRepository);
    },
  );
  final params = Params(id: 1);
  final user = User(
    id: 2,
    name: Name("Test User"),
    username: Name("TestUser"),
    password: Password("abcd*1234"),
    email: EmailAddress("test@test.test"),
    birthday: PastDate(DateTime.now()),
    description: EntityDescription("For testing"),
    imageURL: "test.png",
    level: UserLevel(1),
    experiencePoints: ExperiencePoints(1),
    privacy: false,
    adminPowers: false,
    enabled: true,
    lastLogin: PastDate(DateTime.now()),
    creationDate: PastDate(DateTime.now()),
    modificationDate: PastDate(DateTime.now()),
    options: null,
    achievements: null,
    blockedUsers: null,
    devices: null,
    experiencesDone: null,
    experiencesLiked: null,
    experiencesToDo: null,
    followedUsers: null,
    systems: null,
    interests: null,
  );
  test(
    "Should get the User that created a given Tag",
    () async {
      // Arrange
      when(mockTagRepository.getCreator(any)).thenAnswer((_) async => right(user));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(user));
      _verifyInteractions(mockTagRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.cacheError();
          when(mockTagRepository.getCreator(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockTagRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.serverError();
          when(mockTagRepository.getCreator(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockTagRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockTagRepository.getCreator(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockTagRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockTagRepository mockTagRepository) {
  verify(mockTagRepository.getCreator(any));
  verifyNoMoreInteractions(mockTagRepository);
}
