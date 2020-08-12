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
      icon: Icon(
        Icons.notifications_none,
        size: 35,
      ),
      onPressed: () => context.bloc<NavigationActorBloc>().add(
            const NavigationActorEvent.notificationsTapped(),
          ),
    );
  }
}
