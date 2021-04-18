import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';

class NoNewNotificationsButton extends StatelessWidget {
  const NoNewNotificationsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      icon: const Icon(
        Icons.notifications_none,
        size: 35,
      ),
      onPressed: () => context.read<NavigationActorBloc>().add(
            const NavigationActorEvent.notificationsTapped(),
          ),
    );
  }
}
