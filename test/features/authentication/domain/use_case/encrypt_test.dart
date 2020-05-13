import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/util/cypher.dart';
import 'package:worldon/features/authentication/domain/use_case/encrypt.dart';

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
  test(
    "Should call cypher and get back the encrypted string",
    () async {
      // Arrange

      // Act

      // Assert
    },
  );
  // TODO Test on Failure
}
