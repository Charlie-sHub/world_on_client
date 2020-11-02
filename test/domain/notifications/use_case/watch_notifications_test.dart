import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';
import 'package:worldon/domain/notifications/use_case/watch_notifications.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  NotificationRepositoryInterface mockNotificationRepository;
  NoParams params;
  WatchNotifications useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockNotificationRepository = getIt<NotificationRepositoryInterface>();
      params = getIt<NoParams>();
      useCase = WatchNotifications(mockNotificationRepository);
    },
  );
  final notificationSet = KtList.of(Notification.empty());
  test(
    "Should return a list of Notifications",
    () async {
      // Arrange
      when(mockNotificationRepository.watchNotifications()).thenAnswer((_) => createStream(right(notificationSet)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(notificationSet));
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
          when(mockNotificationRepository.watchNotifications()).thenAnswer((_) => createStream(left(failure)));
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
          when(mockNotificationRepository.watchNotifications()).thenAnswer((_) => createStream(left(failure)));
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

Future<Either<Failure, KtList<Notification>>> _act(WatchNotifications useCase, NoParams params) async {
  final resultStream = useCase(params);
  Either<Failure, KtList<Notification>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(NotificationRepositoryInterface mockNotificationRepository) {
  verify(mockNotificationRepository.watchNotifications());
  verifyNoMoreInteractions(mockNotificationRepository);
}
