import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';
import 'package:worldon/domain/profile/use_case/load_user.dart';

import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadUser useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadUser(mockProfileRepository);
    },
  );
  const id = 1;
  final user = User(
    id: 2,
    name: Name("Test User"),
    username: Name("TestUser"),
    password: Password("abcd*1234"),
    email: EmailAddress("test@test.test"),
    birthday: PastDate(DateTime.now()),
    description: EntityDescription("For testing"),
    imageName: "test.png",
    level: UserLevel(1),
    experiencePoints: ExperiencePoints(1),
    privacy: false,
    adminPowers: false,
    enabled: true,
    lastLogin: PastDate(DateTime.now()),
    creationDate: PastDate(DateTime.now()),
    modificationDate: PastDate(DateTime.now()),
    options: Options(),
  );
  test(
    "Should return a User if everything goes well",
    () async {
      // Arrange
      when(mockProfileRepository.loadUser(any)).thenAnswer((_) async => right(user));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(user));
      verify(mockProfileRepository.loadUser(any));
      verifyNoMoreInteractions(mockProfileRepository);
    },
  );
  group(
    "Testing on failure",
    () {
      test(
        "Should return ServerError if there's a problem with the server",
        () async {
          // Arrange
          when(mockProfileRepository.loadUser(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.loadUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        "Should return CacheError if there's a problem with the cache",
        () async {
          // Arrange
          when(mockProfileRepository.loadUser(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockProfileRepository.loadUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        "Should return NotFoundError if there was no USer with the given id",
        () async {
          // Arrange
          when(mockProfileRepository.loadUser(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockProfileRepository.loadUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}
