import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/notifications/use_case/delete_user_notifications.dart';

import '../../../constants.dart';
import '../repository/mock_notification_repository.dart';

void main() {
  MockNotificationRepository mockNotificationRepository;
  DeleteUserNotifications useCase;
  setUp(
    () {
      mockNotificationRepository = MockNotificationRepository();
      useCase = DeleteUserNotifications(mockNotificationRepository);
    },
  );
  const userId = 1;
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockNotificationRepository.deleteUserNotifications(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(userId: userId));
      // Assert
      expect(result, right(null));
      verify(mockNotificationRepository.deleteUserNotifications(any));
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
          when(mockNotificationRepository.deleteUserNotifications(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockNotificationRepository.deleteUserNotifications(any));
          verifyNoMoreInteractions(mockNotificationRepository);
        },
      );
    },
  );
}
