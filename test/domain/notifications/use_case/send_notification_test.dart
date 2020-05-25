import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/notification.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/notifications/use_case/send_notification.dart';

import '../repository/mock_notification_repository.dart';

void main() {
  MockNotificationRepository mockNotificationRepository;
  SendNotification useCase;
  setUp(
    () {
      mockNotificationRepository = MockNotificationRepository();
      useCase = SendNotification(mockNotificationRepository);
    },
  );
  final notification = Notification(
    id: 1,
    sender: User(id: 1),
    receiver: User(id: 2),
    content: "test",
    seen: false,
    creationDate: DateTime.now(),
  );
  test(
    "Should return nothing if everything goes well",
    () async {
      // Arrange
      when(mockNotificationRepository.sendNotification(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(notification: notification));
      // Assert
      expect(result, right(null));
      verify(mockNotificationRepository.sendNotification(any));
      verifyNoMoreInteractions(mockNotificationRepository);
    },
  );
  group(
    "Testing on failure",
    () {
      test(
        "Should return ServerError if there's a problem with the server",
        () async {
          // Arrange
          when(mockNotificationRepository.sendNotification(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(notification: notification));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockNotificationRepository.sendNotification(any));
          verifyNoMoreInteractions(mockNotificationRepository);
        },
      );
    },
  );
}
