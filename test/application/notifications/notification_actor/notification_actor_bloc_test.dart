import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/notifications/notification_actor/notification_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/notifications/use_case/check_notification.dart';
import 'package:worldon/domain/notifications/use_case/delete_notification.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  CheckNotification checkNotification;
  DeleteNotification deleteNotification;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      checkNotification = getIt<CheckNotification>();
      deleteNotification = getIt<DeleteNotification>();
    },
  );
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<NotificationActorBloc>(),
    expect: [],
  );
  group(
    TestDescription.deleteEventTests,
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(deleteNotification.call(any)).thenAnswer((_) async => right(unit));
          return getIt<NotificationActorBloc>();
        },
        act: (bloc) async => bloc.add(NotificationActorEvent.deleted(Notification.empty())),
        verify: (_) async {
          verify(deleteNotification.call(any));
          verifyNoMoreInteractions(deleteNotification);
        },
        expect: [
          const NotificationActorState.actionInProgress(),
          const NotificationActorState.deletionSuccess(),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(deleteNotification.call(any)).thenAnswer((_) async => left(failure));
          return getIt<NotificationActorBloc>();
        },
        act: (bloc) async => bloc.add(NotificationActorEvent.deleted(Notification.empty())),
        verify: (_) async {
          verify(deleteNotification.call(any));
          verifyNoMoreInteractions(deleteNotification);
        },
        expect: [
          const NotificationActorState.actionInProgress(),
          const NotificationActorState.deletionFailure(failure),
        ],
      );
    },
  );
  group(
    "Testing checking Notifications",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(checkNotification.call(any)).thenAnswer((_) async => right(unit));
          return getIt<NotificationActorBloc>();
        },
        act: (bloc) async => bloc.add(NotificationActorEvent.checked(Notification.empty())),
        verify: (_) async {
          verify(checkNotification.call(any));
          verifyNoMoreInteractions(checkNotification);
        },
        expect: [const NotificationActorState.checkSuccess()],
      );
      blocTest(
        "Shouldn't emit anything",
        build: () {
          when(checkNotification.call(any)).thenAnswer((_) async => left(failure));
          return getIt<NotificationActorBloc>();
        },
        act: (bloc) async => bloc.add(NotificationActorEvent.checked(Notification.empty())),
        verify: (_) async {
          verify(checkNotification.call(any));
          verifyNoMoreInteractions(checkNotification);
        },
        expect: [const NotificationActorState.initial()],
      );
    },
  );
}
