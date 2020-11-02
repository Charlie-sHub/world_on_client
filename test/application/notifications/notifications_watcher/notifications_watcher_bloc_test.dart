import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/notifications/notifications_watcher/notifications_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/notifications/use_case/watch_notifications.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchNotifications loadNotifications;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadNotifications = getIt<WatchNotifications>();
    },
  );
  final notifications = KtList.of(Notification.empty());
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<NotificationsWatcherBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(loadNotifications.call(any)).thenAnswer((realInvocation) => createStream(right(notifications)));
      return getIt<NotificationsWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(const NotificationsWatcherEvent.watchNotificationsStarted());
      bloc.add(NotificationsWatcherEvent.resultsReceived(right(notifications)));
    },
    verify: (_) async {
      verify(loadNotifications.call(any));
      verifyNoMoreInteractions(loadNotifications);
    },
    expect: [
      const NotificationsWatcherState.loadInProgress(),
      NotificationsWatcherState.loadSuccess(notifications),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () {
      when(loadNotifications.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<NotificationsWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(const NotificationsWatcherEvent.watchNotificationsStarted());
      bloc.add(NotificationsWatcherEvent.resultsReceived(left(failure)));
    },
    verify: (_) async {
      verify(loadNotifications.call(any));
      verifyNoMoreInteractions(loadNotifications);
    },
    expect: [
      const NotificationsWatcherState.loadInProgress(),
      const NotificationsWatcherState.loadFailure(failure),
    ],
  );
}
