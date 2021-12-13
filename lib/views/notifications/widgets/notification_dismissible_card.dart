import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:worldon/application/notifications/notification_actor/notification_actor_bloc.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/user_avatar_follow_checker.dart';

class NotificationDismissibleTile extends StatelessWidget {
  final Notification notification;
  final String message;

  const NotificationDismissibleTile({
    Key? key,
    required this.notification,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        children: [
          IconButton(
            onPressed: () => context.read<NotificationActorBloc>().add(
                  NotificationActorEvent.deleted(notification),
                ),
            icon: const Icon(
              Icons.delete,
              color: WorldOnColors.red,
            ),
          ),
        ],
      ),
      child: ListTile(
        leading: UserAvatarFollowChecker(
          user: notification.sender,
          checkIconSize: 17,
          avatarRadius: 25,
        ),
        title: SizedBox(
          height: 50,
          width: 150,
          child: Center(
            child: AutoSizeText(
              message,
              minFontSize: 8,
              maxFontSize: 15,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
