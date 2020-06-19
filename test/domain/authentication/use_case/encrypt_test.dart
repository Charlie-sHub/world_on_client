import 'dart:typed_data';

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
  const password = "1234";
  final publicKey = Uint8List(2048);
  const encryptedText = "jhbnujhb";
  final params = Params(
    publicKey: publicKey,
    stringToCypher: password,
  );
  /*
  test(
    "Should call cypher and get back the encrypted string",
    () async {
      // Arrange
      when(mockCypher.call(any, any)).thenReturn(right(encryptedText));
      // Act
      final result = useCase(params);
      // Assert
      expect(result, right(encryptedText));
      verify(mockCypher.call(any, any));
      verifyNoMoreInteractions(mockCypher);
    },
  );
   */
}
