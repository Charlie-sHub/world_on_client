import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:worldon/application/notifications/notification_actor/notification_actor_bloc.dart';
import 'package:worldon/application/notifications/notifications_watcher/notifications_watcher_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/notifications/widgets/notification_card.dart';

class NotificationsBody extends StatelessWidget {
  const NotificationsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NotificationsWatcherBloc>()
            ..add(
              const NotificationsWatcherEvent.watchNotificationsStarted(),
            ),
        ),
        BlocProvider(
          // TODO: Check all notifications when the notifications body opens
          create: (context) => getIt<NotificationActorBloc>(),
        ),
      ],
      child: BlocListener<NotificationActorBloc, NotificationActorState>(
        listener: (context, state) => state.maybeMap(
          deletionFailure: (state) => FlushbarHelper.createError(
            duration: const Duration(seconds: 2),
            message: state.failure.toString(),
          ).show(context),
          orElse: () {},
        ),
        child: BlocBuilder<NotificationsWatcherBloc, NotificationsWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const WorldOnProgressIndicator(),
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
                final _notification = state.notifications[index];
                if (_notification.isValid) {
                  // Throws Looking up a deactivated widget's ancestor is unsafe. otherwise when deleting
                  // Figured it must be using the context directly in a deleted widget
                  final _auxContext = context.read<NotificationActorBloc>();
                  return VisibilityDetector(
                    key: Key(_notification.id.getOrCrash()),
                    onVisibilityChanged: (info) {
                      if (info.visibleFraction > 0.75) {
                        _auxContext.add(
                          NotificationActorEvent.checked(_notification),
                        );
                      }
                    },
                    child: NotificationCard(
                      notification: _notification,
                      key: Key(_notification.id.toString()),
                    ),
                  );
                } else {
                  return ErrorCard(
                    entityType: S.of(context).notification,
                    valueFailureString: _notification.failureOption.fold(
                      () => S.of(context).noError,
                      (failure) => failure.toString(),
                    ),
                  );
                }
              },
            ),
            loadFailure: (state) => ErrorDisplay(
              retryFunction: () => context.read<NotificationsWatcherBloc>().add(
                    const NotificationsWatcherEvent.watchNotificationsStarted(),
                  ),
              failure: state.failure,
              specificMessage: none(),
            ),
          ),
        ),
      ),
    );
  }
}
