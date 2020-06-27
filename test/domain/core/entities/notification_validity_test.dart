import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../constant_descriptions.dart';
import '../methods/get_valid_user.dart';

void main() {
  final validNotification = Notification.empty().copyWith(
    sender: getValidUser(),
    receiver: getValidUser(),
    description: EntityDescription("Test"),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
  );
  final invalidSenderNotification = validNotification.copyWith(sender: User.empty());
  final invalidReceiverNotification = validNotification.copyWith(receiver: User.empty());
  final invalidDescriptionNotification = validNotification.copyWith(description: EntityDescription(""));
  final invalidCreationDateNotification = validNotification.copyWith(creationDate: PastDate(DateTime.now()));
  test(
    descriptionValid,
    () async {
      // Assert
      expect(validNotification.isValid, true);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with invalidSenderNotification",
        () async {
          // Assert
          expect(invalidSenderNotification.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidReceiverNotification",
        () async {
          // Assert
          expect(invalidReceiverNotification.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidDescriptionNotification",
        () async {
          // Assert
          expect(invalidDescriptionNotification.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidCreationDateNotification",
        () async {
          // Assert
          expect(invalidCreationDateNotification.isValid, false);
        },
      );
    },
  );
}
