import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/authentication/use_case/register.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  AuthenticationRepositoryInterface mockAuthenticationRepository;
  Register useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockAuthenticationRepository = getIt<AuthenticationRepositoryInterface>();
      useCase = getIt<Register>();
    },
  );
  final params = Params(user: User.empty());
  test(
    TestDescription.returnNothing,
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
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
      test(
        TestDescription.emailAlreadyInUse,
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
        TestDescription.usernameAlreadyInUse,
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

void _verifyInteractions(AuthenticationRepositoryInterface mockAuthenticationRepository) {
  verify(mockAuthenticationRepository.register(any));
  verifyNoMoreInteractions(mockAuthenticationRepository);
}
