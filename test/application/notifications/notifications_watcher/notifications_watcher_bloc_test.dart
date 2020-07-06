import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/notifications/notifications_watcher/notifications_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/notifications/use_case/load_notifications.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  LoadNotifications loadNotifications;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadNotifications = getIt<LoadNotifications>();
    },
  );
  final notifications = [Notification.empty(), Notification.empty()];
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<NotificationsWatcherBloc>(),
    skip: 0,
    expect: [const NotificationsWatcherState.initial()],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () async {
      when(loadNotifications.call(any)).thenAnswer((realInvocation) => createStream(right(notifications)));
      return getIt<NotificationsWatcherBloc>();
    },
    act: (bloc) async => bloc.add(const NotificationsWatcherEvent.notificationsLoaded()),
    verify: (_) async {
      verify(loadNotifications.call(any));
      verifyNoMoreInteractions(loadNotifications);
    },
    expect: [
      const NotificationsWatcherState.loading(),
      NotificationsWatcherState.loadSuccess(notifications),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () async {
      when(loadNotifications.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<NotificationsWatcherBloc>();
    },
    act: (bloc) async => bloc.add(const NotificationsWatcherEvent.notificationsLoaded()),
    verify: (_) async {
      verify(loadNotifications.call(any));
      verifyNoMoreInteractions(loadNotifications);
    },
    expect: [
      const NotificationsWatcherState.loading(),
      const NotificationsWatcherState.loadFailure(failure),
    ],
  );
}
