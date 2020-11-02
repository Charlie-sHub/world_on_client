import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/message_content.dart';

import '../../../../test_descriptions.dart';

void main() {
  const validMessage = "Test Test";
  const emptyMessage = "";
  const tooLongMessage = """
  TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
  TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest""";
  test(
    TestDescription.valid,
    () async {
      // Act
      final message = MessageContent(validMessage);
      // Assert
      expect(message.isValid(), true);
      expect(message.getOrCrash(), validMessage);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "${TestDescription.invalid} with tooLongMessage",
        () async {
          // Act
          final message = MessageContent(tooLongMessage);
          // Assert
          expect(message.isValid(), false);
        },
      );
      test(
        "${TestDescription.invalid} with emptyMessage",
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
