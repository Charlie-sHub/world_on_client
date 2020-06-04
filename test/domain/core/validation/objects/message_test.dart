import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/message_content.dart';

void main() {
  const validMessage = "Test Test";
  const invalidMessage = """
  TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
  TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest""";
  test(
    "Should be valid",
    () async {
      // Act
      final message = MessageContent(validMessage);
      // Assert
      expect(message.isValid(), true);
      expect(message.getOrCrash(), validMessage);
    },
  );
  test(
    "Should be invalid",
    () async {
      // Act
      final message = MessageContent(invalidMessage);
      // Assert
      expect(message.isValid(), false);
    },
  );
}
