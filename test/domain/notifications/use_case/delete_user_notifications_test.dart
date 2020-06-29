import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/use_case/delete_user_notifications.dart';

import '../../../../lib/domain/notifications/repository/notification_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockNotificationRepository mockNotificationRepository;
  DeleteUserNotifications useCase;
  setUp(
    () {
      mockNotificationRepository = MockNotificationRepository();
      useCase = DeleteUserNotifications(mockNotificationRepository);
    },
  );
  final params = NoParams();
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockNotificationRepository.deleteUserNotifications()).thenAnswer((_) async => right(unit));
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
          when(mockNotificationRepository.deleteUserNotifications()).thenAnswer((_) async => left(failure));
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
  verify(mockNotificationRepository.deleteUserNotifications());
  verifyNoMoreInteractions(mockNotificationRepository);
}
