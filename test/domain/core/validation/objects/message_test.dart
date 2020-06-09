import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/message_content.dart';

import '../../../../constants.dart';

void main() {
  const validMessage = "Test Test";
  const invalidMessage = """
  TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
  TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest""";
  test(
    descriptionValid,
    () async {
      // Act
      final message = MessageContent(validMessage);
      // Assert
      expect(message.isValid(), true);
      expect(message.getOrCrash(), validMessage);
    },
  );
  test(
    descriptionInvalid,
    () async {
      // Act
      final message = MessageContent(invalidMessage);
      // Assert
      expect(message.isValid(), false);
    },
  );
}
