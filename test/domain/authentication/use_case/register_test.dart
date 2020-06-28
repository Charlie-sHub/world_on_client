import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/register.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

import '../../../constant_descriptions.dart';
import '../repository/mock_authentication_repository.dart';

void main() {
  MockAuthenticationRepository mockAuthenticationRepository;
  Register useCase;
  setUp(
    () {
      mockAuthenticationRepository = MockAuthenticationRepository();
      useCase = Register(mockAuthenticationRepository);
    },
  );
  final params = Params(user: User.empty());
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockAuthenticationRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: errorString));
          when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
      test(
        descriptionEmailAlreadyInUse,
        () async {
          // Arrange
          final failure = Failure.coreData(CoreDataFailure.emailAlreadyInUse(email: params.user.email));
          when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
      test(
        descriptionUsernameAlreadyInUse,
        () async {
          // Arrange
          final failure = Failure.coreData(CoreDataFailure.usernameAlreadyInUse(username: params.user.username));
          when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockAuthenticationRepository mockAuthenticationRepository) {
  verify(mockAuthenticationRepository.register(any));
  verifyNoMoreInteractions(mockAuthenticationRepository);
}
