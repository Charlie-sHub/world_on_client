import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_notification.dart';
import 'package:worldon/data/core/models/notification/notification_dto.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final notification = getValidNotification();
      // Act
      final notificationDto = NotificationDto.fromDomain(notification);
      final result = notificationDto.toDomain();
      // Assert
      expect(result, notification);
    },
  );
}
