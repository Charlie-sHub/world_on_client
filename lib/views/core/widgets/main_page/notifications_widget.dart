import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/application/notifications/new_notifications_watcher/new_notifications_watcher_bloc.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

import 'no_new_notifications_button.dart';

class NotificationsButton extends StatelessWidget {
  const NotificationsButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NewNotificationsWatcherBloc>()
        ..add(
          const NewNotificationsWatcherEvent.watchNewNotificationsStarted(),
        ),
      child: BlocBuilder<NewNotificationsWatcherBloc, NewNotificationsWatcherState>(
        builder: (context, state) => context.read<NewNotificationsWatcherBloc>().state.map(
              initial: (_) => const NoNewNotificationsButton(),
              newNotifications: (_) => IconButton(
                padding: const EdgeInsets.all(0),
                icon: const Icon(
                  Icons.notifications_on_rounded,
                  size: 35,
                  color: WorldOnColors.red,
                ),
                onPressed: () => context.read<NavigationActorBloc>().add(
                      const NavigationActorEvent.notificationsTapped(),
                    ),
              ),
              noNewNotifications: (_) => const NoNewNotificationsButton(),
              // What to do if there's a failure?
              failure: (_) => const NoNewNotificationsButton(),
            ),
      ),
    );
  }
}
