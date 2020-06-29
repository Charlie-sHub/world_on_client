import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/failures/authentication_domain_failure.dart';
import 'package:worldon/domain/authentication/use_case/log_in_google.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../../lib/domain/authentication/repository/authentication_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockAuthenticationRepository mockAuthenticationRepository;
  LogInGoogle useCase;
  setUp(
    () {
      mockAuthenticationRepository = MockAuthenticationRepository();
      useCase = LogInGoogle(mockAuthenticationRepository);
    },
  );
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockAuthenticationRepository.logInGoogle()).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockAuthenticationRepository);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "Should get a cancelled by user authentication failure",
        () async {
          // Arrange
          const failure = Failure.authenticationDomain(AuthenticationDomainFailure.cancelledByUser());
          when(mockAuthenticationRepository.logInGoogle()).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockAuthenticationRepository.logInGoogle()).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockAuthenticationRepository mockAuthenticationRepository) {
  verify(mockAuthenticationRepository.logInGoogle());
  verifyNoMoreInteractions(mockAuthenticationRepository);
}
