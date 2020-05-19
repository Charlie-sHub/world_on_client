import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/util/cypher.dart';
import 'package:worldon/domain/authentication/use_case/encrypt.dart';

class MockCypher extends Mock implements Cypher {}

void main() {
  MockCypher mockCypher;
  Encrypt useCase;
  setUp(
    () {
      mockCypher = MockCypher();
      useCase = Encrypt(mockCypher);
    },
  );
  final password = "1234";
  final publicKey = Uint8List(2048);
  final encryptedText = "jhbnujhb";
  test(
    "Should call cypher and get back the encrypted string",
    () async {
      // Arrange
      when(mockCypher.call(any, any)).thenReturn(right(encryptedText));
      // Act
      final result = useCase(
        Params(
          publicKey: publicKey,
          stringToCypher: password,
        ),
      );
      // Assert
      expect(result, right(encryptedText));
      verify(mockCypher.call(any, any));
      verifyNoMoreInteractions(mockCypher);
    },
  );
  // TODO: Test on failure
  // Keeps giving me:
  // Expected: Left<EncryptionFailure, dynamic>:<Left(Instance of 'EncryptionFailure')>
  // Actual: Left<EncryptionFailure, String>:<Left(Instance of 'EncryptionFailure')>
  // Is it even necessary to test on failure? in the sense of testing that it returns a failure
}
