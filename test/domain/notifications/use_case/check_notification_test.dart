import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/notifications/use_case/check_notification.dart';

import '../../../constants.dart';
import '../repository/mock_notification_repository.dart';

void main() {
  MockNotificationRepository mockNotificationRepository;
  CheckNotification useCase;
  setUp(
    () {
      mockNotificationRepository = MockNotificationRepository();
      useCase = CheckNotification(mockNotificationRepository);
    },
  );
  final params = Params(id: 1);
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockNotificationRepository.checkNotification(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(null));
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
          const coreFailure = CoreFailure.serverError();
          when(mockNotificationRepository.checkNotification(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockNotificationRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockNotificationRepository mockNotificationRepository) {
  verify(mockNotificationRepository.checkNotification(any));
  verifyNoMoreInteractions(mockNotificationRepository);
}
