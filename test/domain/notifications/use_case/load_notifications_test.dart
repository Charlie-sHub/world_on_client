import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/notification.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/use_case/load_notifications.dart';

import '../../../constant_descriptions.dart';
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
  final params = NoParams();
  final notificationList = [
    const Notification(
      id: null,
      sender: null,
      receiver: null,
      description: null,
      seen: null,
      creationDate: null,
      type: null,
    ),
  ];
  test(
    "Should return a list of Notifications",
    () async {
      // Arrange
      when(mockNotificationRepository.loadNotifications()).thenAnswer((_) async => right(notificationList));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(notificationList));
      _verifyInteractions(mockNotificationRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: errorString));
          when(mockNotificationRepository.loadNotifications()).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockNotificationRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockNotificationRepository.loadNotifications()).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockNotificationRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockNotificationRepository mockNotificationRepository) {
  verify(mockNotificationRepository.loadNotifications());
  verifyNoMoreInteractions(mockNotificationRepository);
}
