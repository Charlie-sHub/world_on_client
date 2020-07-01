import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/repository/public_key_repository_interface.dart';
import 'package:worldon/domain/authentication/use_case/get_public_key.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  PublicKeyRepositoryInterface mockPublicKeyRepository;
  GetPublicKey useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockPublicKeyRepository = getIt<PublicKeyRepositoryInterface>();
      useCase = GetPublicKey(mockPublicKeyRepository);
    },
  );
  final publicKeyBytes = Uint8List(2048);
  test(
    "Should get a byte array representing the public key",
    () async {
      // Arrange
      when(mockPublicKeyRepository.getPublicKey()).thenAnswer((realInvocation) async => right(publicKeyBytes));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, right(publicKeyBytes));
      _verifyInteractions(mockPublicKeyRepository);
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
          when(mockPublicKeyRepository.getPublicKey()).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockPublicKeyRepository);
        },
      );
      test(
        TestDescription.notFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockPublicKeyRepository.getPublicKey()).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockPublicKeyRepository);
        },
      );
    },
  );
}

void _verifyInteractions(PublicKeyRepositoryInterface mockPublicKeyRepository) {
  verify(mockPublicKeyRepository.getPublicKey());
  verifyNoMoreInteractions(mockPublicKeyRepository);
}
