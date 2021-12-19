import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/application/notifications/new_notifications_watcher/new_notifications_watcher_bloc.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class NotificationsButton extends StatelessWidget {
  const NotificationsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt<NewNotificationsWatcherBloc>()
          ..add(
            const NewNotificationsWatcherEvent.watchNewNotificationsStarted(),
          ),
        child: BlocBuilder<NewNotificationsWatcherBloc,
            NewNotificationsWatcherState>(
          builder: (context, state) => IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              state.maybeMap(
                newNotifications: (_) => Icons.notifications_on_rounded,
                orElse: () => Icons.notifications,
              ),
              size: 25,
              color: state.maybeMap(
                newNotifications: (_) => WorldOnColors.red,
                orElse: () {},
              ),
            ),
            onPressed: () => context.read<NavigationActorBloc>().add(
                  const NavigationActorEvent.notificationsTapped(),
                ),
          ),
        ),
      );
}
