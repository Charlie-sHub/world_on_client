import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';
import 'package:worldon/domain/notifications/use_case/load_notifications.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  NotificationRepositoryInterface mockNotificationRepository;
  NoParams params;
  LoadNotifications useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockNotificationRepository = getIt<NotificationRepositoryInterface>();
      params = getIt<NoParams>();
      useCase = LoadNotifications(mockNotificationRepository);
    },
  );
  final notificationList = [Notification.empty()];
  test(
    "Should return a list of Notifications",
    () async {
      // Arrange
      when(mockNotificationRepository.loadNotifications()).thenAnswer((_) => createStream(right(notificationList)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(notificationList));
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
          when(mockNotificationRepository.loadNotifications()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockNotificationRepository);
        },
      );
      test(
        TestDescription.notFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockNotificationRepository.loadNotifications()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockNotificationRepository);
        },
      );
    },
  );
}

Future<Either<Failure, List<Notification>>> _act(LoadNotifications useCase, NoParams params) async {
  final resultStream = useCase(params);
  Either<Failure, List<Notification>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(NotificationRepositoryInterface mockNotificationRepository) {
  verify(mockNotificationRepository.loadNotifications());
  verifyNoMoreInteractions(mockNotificationRepository);
}
