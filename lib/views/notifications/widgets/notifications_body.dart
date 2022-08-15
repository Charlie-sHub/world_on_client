import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:worldon/application/notifications/notification_actor/notification_actor_bloc.dart';
import 'package:worldon/application/notifications/notifications_watcher/notifications_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/notifications/widgets/notification_dismissible_card.dart';
import 'package:worldon/views/notifications/widgets/shared_experience_dismissible_card.dart';

class NotificationsBody extends StatelessWidget {
  const NotificationsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<NotificationsWatcherBloc>()
              ..add(
                const NotificationsWatcherEvent.watchNotificationsStarted(),
              ),
          ),
          BlocProvider(
            create: (context) => getIt<NotificationActorBloc>(),
          ),
        ],
        child: BlocListener<NotificationActorBloc, NotificationActorState>(
          listener: (context, state) => state.maybeMap(
            deletionFailure: (state) => FlushbarHelper.createError(
              duration: const Duration(seconds: 2),
              message: state.failure.toString(),
            ).show(context),
            orElse: () => null,
          ),
          child:
              BlocBuilder<NotificationsWatcherBloc, NotificationsWatcherState>(
            builder: (context, state) => state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const WorldOnProgressIndicator(
                size: 60,
              ),
              loadSuccess: (state) => ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(
                  bottom: kFloatingActionButtonMargin + 50,
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                itemCount: state.notifications.size,
                separatorBuilder: (context, index) => const Divider(
                  color: WorldOnColors.accent,
                ),
                itemBuilder: (context, index) {
                  final notification = state.notifications[index];
                  if (notification.isValid) {
                    // Throws Looking up a deactivated widget's ancestor is unsafe. otherwise when deleting
                    // Figured it must be using the context directly in a deleted widget
                    final auxContext = context.read<NotificationActorBloc>();
                    final message =
                        _getNotificationMessage(context, notification);
                    if (!notification.seen && index < 5) {
                      _showLocalNotification(
                        index,
                        context,
                        message,
                      );
                    }
                    return VisibilityDetector(
                      key: Key(notification.id.getOrCrash()),
                      onVisibilityChanged: (info) {
                        if (info.visibleFraction > 0.75) {
                          auxContext.add(
                            NotificationActorEvent.checked(notification),
                          );
                          getIt<FlutterLocalNotificationsPlugin>()
                              .cancel(index);
                        }
                      },
                      child: notification.experienceOption.fold(
                        () => NotificationDismissibleTile(
                          notification: notification,
                          message: message,
                          key: Key(notification.id.toString()),
                        ),
                        (experience) => SharedExperienceDismissibleCard(
                          notification: notification,
                          experience: experience,
                          key: Key(notification.id.toString()),
                        ),
                      ),
                    );
                  } else {
                    return ErrorCard(
                      entityType: S.of(context).notification,
                      valueFailureString: notification.failureOption.fold(
                        () => S.of(context).noError,
                        (failure) => failure.toString(),
                      ),
                    );
                  }
                },
              ),
              loadFailure: (state) => ErrorDisplay(
                retryFunction: () =>
                    context.read<NotificationsWatcherBloc>().add(
                          const NotificationsWatcherEvent
                              .watchNotificationsStarted(),
                        ),
                failure: state.failure,
                specificMessage: none(),
              ),
            ),
          ),
        ),
      );

  void _showLocalNotification(
    int index,
    BuildContext context,
    String message,
  ) {
    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
      "notification_notification",
      "World On notifications channel",
      importance: Importance.high,
      playSound: false,
    );
    const platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );
    getIt<FlutterLocalNotificationsPlugin>().show(
      index,
      S.of(context).newNotification,
      message,
      platformChannelSpecifics,
    );
  }

  String _getNotificationMessage(
    BuildContext context,
    Notification notification,
  ) {
    String notificationDescription;
    switch (notification.type) {
      case NotificationType.block:
        notificationDescription = S.of(context).blockedYou;
        break;
      case NotificationType.unblock:
        notificationDescription = S.of(context).unblockedYou;
        break;
      case NotificationType.unfollow:
        notificationDescription = S.of(context).unfollowedYou;
        break;
      case NotificationType.follow:
        notificationDescription = S.of(context).followedYou;
        break;
      case NotificationType.share:
        // Should never enter here though
        notificationDescription = S.of(context).shared;
        break;
    }
    return "${notification.sender.username.getOrCrash()} $notificationDescription";
  }
}
