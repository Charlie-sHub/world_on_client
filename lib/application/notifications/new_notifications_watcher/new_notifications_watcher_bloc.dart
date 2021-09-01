import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/use_case/watch_if_new_notifications.dart';
import 'package:worldon/injection.dart';

part 'new_notifications_watcher_bloc.freezed.dart';
part 'new_notifications_watcher_event.dart';
part 'new_notifications_watcher_state.dart';

@injectable
class NewNotificationsWatcherBloc
    extends Bloc<NewNotificationsWatcherEvent, NewNotificationsWatcherState> {
  NewNotificationsWatcherBloc() : super(const NewNotificationsWatcherState.initial());

  StreamSubscription<Either<Failure, bool>>? _newNotificationsStreamSubscription;

  @override
  Stream<NewNotificationsWatcherState> mapEventToState(NewNotificationsWatcherEvent event) async* {
    yield* event.map(
      watchNewNotificationsStarted: onWatchNewNotificationsStarted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<NewNotificationsWatcherState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrBool.fold(
      (failure) => const NewNotificationsWatcherState.failure(),
      (_newNotifications) {
        if (_newNotifications) {
          return const NewNotificationsWatcherState.newNotifications();
        } else {
          return const NewNotificationsWatcherState.noNewNotifications();
        }
      },
    );
  }

  Stream<NewNotificationsWatcherState> onWatchNewNotificationsStarted(_) async* {
    await _newNotificationsStreamSubscription?.cancel();
    _newNotificationsStreamSubscription = getIt<WatchIfNewNotifications>()(
      getIt<NoParams>(),
    ).listen(
      (_failureOrBool) => add(
        NewNotificationsWatcherEvent.resultsReceived(_failureOrBool),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _newNotificationsStreamSubscription?.cancel();
    return super.close();
  }
}
