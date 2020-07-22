import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/notifications/notification_actor/notification_actor_bloc.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class NotificationCard extends StatelessWidget {
  final Notification notification;

  const NotificationCard({Key key, @required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: Border(
        bottom: BorderSide(
          color: getColor(notification.type),
          width: 6,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(7),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
            ),
          ),
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
              icon: Icon(
                Icons.delete_forever,
                size: 30,
              ),
              color: WorldOnColors.red,
              // TODO: Make the card destroy itself
              onPressed: () => context.bloc<NotificationActorBloc>().add(NotificationActorEvent.deleted(notification)),
            ),
          ),
        ],
      ),
    );
  }
}

Color getColor(NotificationType type) {
  switch (type) {
    case NotificationType.follow:
      return Colors.green;
      break;
    case NotificationType.unfollow:
      return Colors.yellow;
      break;
    case NotificationType.block:
      return Colors.red;
      break;
    case NotificationType.unblock:
      return Colors.orange;
      break;
    default:
      return Colors.white;
      break;
  }
}
