import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/application/notifications/notification_actor/notification_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/user_avatar_follow_checker.dart';
import 'package:worldon/views/core/widgets/misc/world_on_plasma.dart';

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
        tileColor: WorldOnColors.background,
        onTap: () => context.read<NavigationActorBloc>().add(
              NavigationActorEvent.experienceNavigationTapped(
                some(experience),
              ),
            ),
        leading: UserAvatarFollowChecker(
          user: notification.sender,
          checkIconSize: 17,
          avatarRadius: 25,
        ),
        title: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 75,
              width: 400,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                child: ShaderMask(
                  blendMode: BlendMode.darken,
                  shaderCallback: (bounds) => LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.6),
                    ],
                    stops: const [
                      0,
                      1,
                    ],
                  ).createShader(bounds),
                  child: CachedNetworkImage(
                    imageUrl: experience.imageURLs.first,
                    fit: BoxFit.cover,
                    progressIndicatorBuilder: (context, url, progress) =>
                        WorldOnPlasma(),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              child: Column(
                children: [
                  AutoSizeText(
                    _getNotificationMessage(context),
                    minFontSize: 8,
                    maxFontSize: 15,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  AutoSizeText(
                    experience.title.getOrCrash(),
                    minFontSize: 8,
                    maxFontSize: 15,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
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
