import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/notifications/notification_actor/notification_actor_bloc.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';

class NotificationDismissibleTile extends StatelessWidget {
  final Notification notification;

  const NotificationDismissibleTile({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (_) => context.read<NotificationActorBloc>().add(
            NotificationActorEvent.deleted(notification),
          ),
      direction: DismissDirection.endToStart,
      background: const ListTile(
        tileColor: WorldOnColors.red,
        title: Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ),
      ),
      key: Key(notification.id.getOrCrash()),
      child: ListTile(
        leading: UserImage(
          user: notification.sender,
          avatarRadius: 25,
          checkIconSize: 17,
        ),
        title: SizedBox(
          height: 50,
          width: 150,
          child: Center(
            child: AutoSizeText(
              _getNotificationMessage(context),
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

  String _getNotificationMessage(BuildContext context) {
    String _notificationDescription;
    switch (notification.type) {
      case NotificationType.block:
        _notificationDescription = S.of(context).blockedYou;
        break;
      case NotificationType.unblock:
        _notificationDescription = S.of(context).unblockedYou;
        break;
      case NotificationType.unfollow:
        _notificationDescription = S.of(context).unfollowedYou;
        break;
      case NotificationType.follow:
        _notificationDescription = S.of(context).followedYou;
        break;
      case NotificationType.share:
        _notificationDescription = S.of(context).shared;
        break;
    }
    return "${notification.sender.username.getOrCrash()} $_notificationDescription";
  }
}
