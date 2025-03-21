import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/message/message.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/message_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

import '../../../test_descriptions.dart';

void main() {
  final validMessage = Message(
    sender: getValidUser(),
    receiver: getValidUser(),
    content: MessageContent("Test"),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
    id: UniqueId(),
  );
  final invalidSenderMessage = validMessage.copyWith(sender: User.empty());
  final invalidReceiverMessage = validMessage.copyWith(receiver: User.empty());
  final invalidContentMessage = validMessage.copyWith(content: MessageContent(""));
  final invalidCreationDateMessage = validMessage.copyWith(creationDate: PastDate(DateTime.now().add(const Duration(days: 10))));
  test(
    TestDescription.valid,
    () async {
      // Assert
      expect(validMessage.isValid, true);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "${TestDescription.invalid} with invalidSenderMessage",
        () async {
          // Assert
          expect(invalidSenderMessage.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidReceiverMessage",
        () async {
          // Assert
          expect(invalidReceiverMessage.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidContentMessage",
        () async {
          // Assert
          expect(invalidContentMessage.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidCreationDateMessage",
        () async {
          // Assert
          expect(invalidCreationDateMessage.isValid, false);
        },
      );
    },
  );
}
