import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/notifications/notification_actor/notification_actor_bloc.dart';
import 'package:worldon/application/notifications/notifications_watcher/notifications_watcher_bloc.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';
import 'package:worldon/views/notifications/widget/notification_card.dart';
import 'package:worldon/views/notifications/widget/notification_error_card.dart';

class NotificationsBody extends StatelessWidget {
  const NotificationsBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NotificationsWatcherBloc>()
            ..add(
              const NotificationsWatcherEvent.watchNotificationsStarted(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<NotificationActorBloc>(),
        ),
      ],
      child: BlocListener<NotificationActorBloc, NotificationActorState>(
        listener: (context, state) => state.maybeMap(
          // Maybe the action in progress and success are not necessary to map
          actionInProgress: (_) => FlushbarHelper.createLoading(
            duration: const Duration(seconds: 2),
            message: "Action in progress",
            linearProgressIndicator: const LinearProgressIndicator(),
          ).show(context),
          deletionSuccess: (_) => FlushbarHelper.createSuccess(
            duration: const Duration(seconds: 2),
            message: "Success",
          ).show(context),
          deletionFailure: (state) => FlushbarHelper.createError(
            duration: const Duration(seconds: 2),
            message: state.failure.toString(),
          ).show(context),
          orElse: () => null,
        ),
        child: BlocBuilder<NotificationsWatcherBloc, NotificationsWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => WorldOnProgressIndicator(),
            loadSuccess: (state) => ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: state.notifications.size,
              itemBuilder: (context, index) {
                final _notification = state.notifications[index];
                if (_notification.isValid) {
                  context.bloc<NotificationActorBloc>().add(NotificationActorEvent.checked(_notification));
                  return NotificationCard(notification: _notification);
                } else {
                  return NotificationErrorCard(notification: _notification);
                }
              },
            ),
            loadFailure: (state) => InkWell(
              onTap: () async => context.bloc<NotificationsWatcherBloc>().add(
                    const NotificationsWatcherEvent.watchNotificationsStarted(),
                  ),
              child: CriticalErrorDisplay(failure: state.failure),
            ),
          ),
        ),
      ),
    );
  }
}
