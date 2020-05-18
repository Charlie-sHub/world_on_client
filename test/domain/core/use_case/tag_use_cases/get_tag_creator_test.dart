import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/tag_use_cases/get_tag_creator.dart';

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
  final id = 1;
  final user = User(
    id: 1,
    name: "Test User",
    username: "testuser",
    password: "1234",
    email: "test@test.test",
    birthday: DateTime.now(),
    biography: "I test",
    imageName: "test.png",
    level: 1,
    experiencePoints: 0,
    privacy: false,
    adminPowers: false,
    enabled: true,
    lastLogin: DateTime.now(),
    creationDate: DateTime.now(),
    modificationDate: DateTime.now(),
    options: Options(),
  );
  test(
    "Should get the User that created a given Tag",
    () async {
      // Arrange
      when(mockTagRepository.getCreator(any)).thenAnswer((_) async => Right(user));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, Right(user));
      verify(mockTagRepository.getCreator(any));
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
  // TODO Test on Failure
}
