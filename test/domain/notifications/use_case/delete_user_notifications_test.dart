import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/notifications/use_case/delete_user_notifications.dart';

import '../../../constant_descriptions.dart';
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
  final params = Params(userId: 1);
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockNotificationRepository.deleteUserNotifications(any)).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
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
          when(mockNotificationRepository.deleteUserNotifications(any)).thenAnswer((_) async => left(failure));
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
  verify(mockNotificationRepository.deleteUserNotifications(any));
  verifyNoMoreInteractions(mockNotificationRepository);
}
