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
  const userId = 1;
  final notificationList = [Notification(), Notification(), Notification()];
  test(
    "Should return a list of Notifications",
    () async {
      // Arrange
      when(mockNotificationRepository.loadNotifications(any)).thenAnswer((_) async => right(notificationList));
      // Act
      final result = await useCase(Params(userId: userId));
      // Assert
      expect(result, right(notificationList));
      verify(mockNotificationRepository.loadNotifications(any));
      verifyNoMoreInteractions(mockNotificationRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockNotificationRepository.loadNotifications(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockNotificationRepository.loadNotifications(any));
          verifyNoMoreInteractions(mockNotificationRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockNotificationRepository.loadNotifications(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockNotificationRepository.loadNotifications(any));
          verifyNoMoreInteractions(mockNotificationRepository);
        },
      );
    },
  );
}
