import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/log_out.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../constant_descriptions.dart';
import '../repository/mock_authentication_repository.dart';

void main() {
  MockAuthenticationRepository mockAuthenticationRepository;
  LogOut useCase;
  setUp(
      () {
      mockAuthenticationRepository = MockAuthenticationRepository();
      useCase = LogOut(mockAuthenticationRepository);
    },
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockAuthenticationRepository.logOut()).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(NoParams());
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
          when(mockAuthenticationRepository.logOut()).thenAnswer((_) async => left(failure));
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
  verify(mockAuthenticationRepository.logOut());
  verifyNoMoreInteractions(mockAuthenticationRepository);
}
