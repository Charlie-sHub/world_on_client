import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/use_case/use_case.dart';
import 'package:worldon/features/authentication/domain/use_case/get_public_key.dart';

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
      when(mockPublicKeyRepository.getPublicKey()).thenAnswer((realInvocation) async => Right(publicKeyBytes));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, Right(publicKeyBytes));
      verify(mockPublicKeyRepository.getPublicKey());
      verifyNoMoreInteractions(mockPublicKeyRepository);
    },
  );
  // TODO Test on Failure
}
