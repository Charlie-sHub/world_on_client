import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/use_case/watch_notifications.dart';
import 'package:worldon/injection.dart';

part 'notifications_watcher_bloc.freezed.dart';
part 'notifications_watcher_event.dart';
part 'notifications_watcher_state.dart';

@injectable
class NotificationsWatcherBloc
    extends Bloc<NotificationsWatcherEvent, NotificationsWatcherState> {
  NotificationsWatcherBloc()
      : super(const NotificationsWatcherState.initial()) {
    on<_WatchNotificationsStarted>(_onWatchNotificationsStarted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Notification>>>?
      _notificationsStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrNotifications.fold(
        (failure) => NotificationsWatcherState.loadFailure(failure),
        (notifications) => NotificationsWatcherState.loadSuccess(notifications),
      ),
    );
  }

  FutureOr<void> _onWatchNotificationsStarted(_, Emitter emit) async {
    emit(const NotificationsWatcherState.loadInProgress());
    await _notificationsStreamSubscription?.cancel();
    _notificationsStreamSubscription =
        getIt<WatchNotifications>()(getIt<NoParams>()).listen(
      (_failureOrNotifications) => add(
        NotificationsWatcherEvent.resultsReceived(_failureOrNotifications),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _notificationsStreamSubscription?.cancel();
    return super.close();
  }
}
