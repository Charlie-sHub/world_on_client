import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/notification.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/notifications/use_case/send_notification.dart';

import '../../../constants.dart';
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
    description: EntityDescription("test"),
    seen: false,
    creationDate: PastDate(DateTime.now()),
  );
  test(
    descriptionReturnNothing,
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
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
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
