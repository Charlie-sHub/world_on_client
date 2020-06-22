import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/message_content.dart';

import '../../../../constant_descriptions.dart';

void main() {
  const validMessage = "Test Test";
  const emptyMessage = "";
  const tooLongMessage = """
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
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with tooLongMessage",
        () async {
          // Act
          final message = MessageContent(tooLongMessage);
          // Assert
          expect(message.isValid(), false);
        },
      );
      test(
        "$descriptionInvalid with emptyMessage",
        () async {
          // Act
          final message = MessageContent(emptyMessage);
          // Assert
          expect(message.isValid(), false);
        },
      );
    },
  );
}
