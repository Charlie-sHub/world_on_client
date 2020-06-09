import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/notification.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/notifications/use_case/load_notifications.dart';

import '../../../constants.dart';
import '../repository/mock_notification_repository.dart';

void main() {
  MockNotificationRepository mockNotificationRepository;
  LoadNotifications useCase;
  setUp(
    () {
      mockNotificationRepository = MockNotificationRepository();
      useCase = LoadNotifications(mockNotificationRepository);
    },
  );
  final params = Params(userId: 1);
  final notificationList = [
    Notification(),
    Notification(),
    Notification(),
  ];
  test(
    "Should return a list of Notifications",
    () async {
      // Arrange
      when(mockNotificationRepository.loadNotifications(any)).thenAnswer((_) async => right(notificationList));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(notificationList));
      verifyInteractions(mockNotificationRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.serverError();
          when(mockNotificationRepository.loadNotifications(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockNotificationRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockNotificationRepository.loadNotifications(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockNotificationRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockNotificationRepository mockNotificationRepository) {
  verify(mockNotificationRepository.loadNotifications(any));
  verifyNoMoreInteractions(mockNotificationRepository);
}
