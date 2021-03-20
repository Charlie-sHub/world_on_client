import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';

class NotificationsButton extends StatelessWidget {
  const NotificationsButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      icon: const Icon(
        Icons.notifications_none,
        size: 35,
      ),
      // TODO: Add bloc that checks for notifications
      // And change the icon accordingly to show the user if it has new notifications
      onPressed: () => context.read<NavigationActorBloc>().add(
            const NavigationActorEvent.notificationsTapped(),
          ),
    );
  }
}
