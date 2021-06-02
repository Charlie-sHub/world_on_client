import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/application/notifications/notification_actor/notification_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';

class SharedExperienceDismissibleCard extends StatelessWidget {
  final Notification notification;
  final Experience experience;

  const SharedExperienceDismissibleCard({
    Key? key,
    required this.notification,
    required this.experience,
  }) : super(key: key);

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
        onTap: () => context.read<NavigationActorBloc>().add(
              NavigationActorEvent.experienceNavigationTapped(
                some(experience),
              ),
            ),
        leading: UserImage(
          user: notification.sender,
          avatarRadius: 25,
          checkIconSize: 17,
        ),
        title: Column(
          children: [
            AutoSizeText(
              _getNotificationMessage(context),
              minFontSize: 8,
              maxFontSize: 15,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
            AutoSizeText(
              experience.title.getOrCrash(),
              minFontSize: 8,
              maxFontSize: 15,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getNotificationMessage(BuildContext context) {
    return "${notification.sender.username.getOrCrash()} ${S.of(context).shared}:";
  }
}
