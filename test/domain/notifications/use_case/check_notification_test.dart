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
  const id = 1;
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockNotificationRepository.checkNotification(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(null));
      verify(mockNotificationRepository.checkNotification(any));
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
          when(mockNotificationRepository.checkNotification(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockNotificationRepository.checkNotification(any));
          verifyNoMoreInteractions(mockNotificationRepository);
        },
      );
    },
  );
}
