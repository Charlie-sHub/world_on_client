import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/message/message.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/message_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../constant_descriptions.dart';
import '../methods/get_valid_user.dart';

void main() {
  final validMessage = Message(
    sender: getValidUser(),
    receiver: getValidUser(),
    content: MessageContent("Test"),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
  );
  final invalidSenderMessage = validMessage.copyWith(sender: User.empty());
  final invalidReceiverMessage = validMessage.copyWith(receiver: User.empty());
  final invalidContentMessage = validMessage.copyWith(content: MessageContent(""));
  final invalidCreationDateMessage = validMessage.copyWith(creationDate: PastDate(DateTime.now()));
  test(
    descriptionValid,
    () async {
      // Assert
      expect(validMessage.isValid, true);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with invalidSenderMessage",
        () async {
          // Assert
          expect(invalidSenderMessage.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidReceiverMessage",
        () async {
          // Assert
          expect(invalidReceiverMessage.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidContentMessage",
        () async {
          // Assert
          expect(invalidContentMessage.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidCreationDateMessage",
        () async {
          // Assert
          expect(invalidCreationDateMessage.isValid, false);
        },
      );
    },
  );
}
