import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/use_case/load_notifications.dart';

import '../../../injection.dart';

part 'notifications_watcher_bloc.freezed.dart';
part 'notifications_watcher_event.dart';
part 'notifications_watcher_state.dart';

@injectable
class NotificationsWatcherBloc extends Bloc<NotificationsWatcherEvent, NotificationsWatcherState> {
  NotificationsWatcherBloc() : super(const NotificationsWatcherState.initial());

  @override
  Stream<NotificationsWatcherState> mapEventToState(NotificationsWatcherEvent event) async* {
    yield* event.map(
      watchNotificationsStarted: onWatchNotificationsStarted,
    );
  }

  Stream<NotificationsWatcherState> onWatchNotificationsStarted(_WatchNotificationsStarted event) async* {
    yield const NotificationsWatcherState.loadInProgress();
    final _loadNotifications = getIt<LoadNotifications>();
    yield* _loadNotifications(getIt<NoParams>()).map(
      (failureOrNotifications) => failureOrNotifications.fold(
        (failure) => NotificationsWatcherState.loadFailure(failure),
        (notifications) => NotificationsWatcherState.loadSuccess(notifications),
      ),
    );
  }
}
