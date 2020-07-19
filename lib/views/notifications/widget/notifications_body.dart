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
        listener: (context, state) => null,
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
                  return NotificationCard(notification: _notification);
                } else {
                  return NotificationErrorCard(notification: _notification);
                }
              },
            ),
            loadFailure: (state) => CriticalErrorDisplay(failure: state.failure),
          ),
        ),
      ),
    );
  }
}
