import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';
import 'package:worldon/domain/notifications/use_case/send_notification.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  NotificationRepositoryInterface mockNotificationRepository;
  SendNotification useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockNotificationRepository = getIt<NotificationRepositoryInterface>();
      useCase = SendNotification(mockNotificationRepository);
    },
  );
  final params = Params(notification: Notification.empty());
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockNotificationRepository.sendNotification(any)).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockNotificationRepository);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockNotificationRepository.sendNotification(any)).thenAnswer((_) async => left(failure));
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

void _verifyInteractions(NotificationRepositoryInterface mockNotificationRepository) {
  verify(mockNotificationRepository.sendNotification(any));
  verifyNoMoreInteractions(mockNotificationRepository);
}
