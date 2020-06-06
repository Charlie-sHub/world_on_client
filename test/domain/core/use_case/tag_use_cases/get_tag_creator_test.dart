import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/options.dart';
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
    "Should get the User that created a given Tag",
    () async {
      // Arrange
      when(mockTagRepository.getCreator(any)).thenAnswer((_) async => right(user));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(user));
      verify(mockTagRepository.getCreator(any));
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockTagRepository.getCreator(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockTagRepository.getCreator(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockTagRepository.getCreator(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagRepository.getCreator(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockTagRepository.getCreator(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockTagRepository.getCreator(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
    },
  );
}
