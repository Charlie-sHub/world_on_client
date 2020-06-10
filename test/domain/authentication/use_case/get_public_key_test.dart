import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/use_case/get_public_key.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../constants.dart';
import '../repository/mock_public_key_repository.dart';

void main() {
  MockPublicKeyRepository mockPublicKeyRepository;
  GetPublicKey useCase;
  setUp(
    () {
      mockPublicKeyRepository = MockPublicKeyRepository();
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
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.serverError();
          when(mockPublicKeyRepository.getPublicKey()).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockPublicKeyRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockPublicKeyRepository.getPublicKey()).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockPublicKeyRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockPublicKeyRepository mockPublicKeyRepository) {
  verify(mockPublicKeyRepository.getPublicKey());
  verifyNoMoreInteractions(mockPublicKeyRepository);
}
