import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/use_case/watch_notifications.dart';

import '../../../injection.dart';

part 'notifications_watcher_bloc.freezed.dart';
part 'notifications_watcher_event.dart';
part 'notifications_watcher_state.dart';

@injectable
class NotificationsWatcherBloc extends Bloc<NotificationsWatcherEvent, NotificationsWatcherState> {
  NotificationsWatcherBloc() : super(const NotificationsWatcherState.initial());
  StreamSubscription<Either<Failure, KtList<Notification>>> _notificationsStreamSubscription;

  @override
  Stream<NotificationsWatcherState> mapEventToState(NotificationsWatcherEvent event) async* {
    yield* event.map(
      watchNotificationsStarted: _onWatchNotificationsStarted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<NotificationsWatcherState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrNotifications.fold(
      (failure) => NotificationsWatcherState.loadFailure(failure),
      (notifications) => NotificationsWatcherState.loadSuccess(notifications),
    );
  }

  Stream<NotificationsWatcherState> _onWatchNotificationsStarted(_) async* {
    yield const NotificationsWatcherState.loadInProgress();
    await _notificationsStreamSubscription?.cancel();
    final _loadNotifications = getIt<WatchNotifications>();
    _notificationsStreamSubscription = _loadNotifications(getIt<NoParams>()).listen(
      (_failureOrNotifications) => add(NotificationsWatcherEvent.resultsReceived(_failureOrNotifications)),
    );
  }

  @override
  Future<void> close() async {
    await _notificationsStreamSubscription?.cancel();
    return super.close();
  }
}
