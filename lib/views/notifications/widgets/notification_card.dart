import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/notifications/notification_actor/notification_actor_bloc.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';

class NotificationCard extends StatelessWidget {
  final Notification notification;

  const NotificationCard({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
        side: BorderSide(
          color: _getColorByNotificationType(notification.type),
          width: 3,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          UserImage(user: notification.sender),
          Expanded(
            child: Center(
              child: AutoSizeText(
                notification.description.getOrCrash(),
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 12,
                  color: WorldOnColors.background,
                ),
              ),
            ),
          ),
          // Ideally this would be a detected gesture such as swipe left and not a button, but that's not a priority right now
          Padding(
            padding: const EdgeInsets.all(7),
            child: IconButton(
              icon: const Icon(
                Icons.delete_forever,
                size: 30,
              ),
              color: WorldOnColors.red,
              onPressed: () => context.read<NotificationActorBloc>().add(NotificationActorEvent.deleted(notification)),
            ),
          ),
        ],
      ),
    );
  }

  Color _getColorByNotificationType(NotificationType type) {
    switch (type) {
      case NotificationType.follow:
        return Colors.green;
      case NotificationType.unfollow:
        return Colors.yellow;
      case NotificationType.block:
        return Colors.red;
      case NotificationType.unblock:
        return Colors.orange;
      default:
        return Colors.white;
    }
  }
}
