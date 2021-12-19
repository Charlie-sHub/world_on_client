import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/expansion_experience_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class MainFeedBody extends StatelessWidget {
  const MainFeedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt<MainFeedWatcherBloc>()
          ..add(
            const MainFeedWatcherEvent.watchMainFeedStarted(),
          ),
        child: BlocBuilder<MainFeedWatcherBloc, MainFeedWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const WorldOnProgressIndicator(
              size: 60,
            ),
            loadSuccess: (state) => RefreshIndicator(
              onRefresh: () async => context.read<MainFeedWatcherBloc>().add(
                    const MainFeedWatcherEvent.watchMainFeedStarted(),
                  ),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(
                  bottom: kFloatingActionButtonMargin + 50,
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                itemCount: state.experiences.size,
                itemBuilder: (context, index) {
                  final _experience = state.experiences[index];
                  if (_experience.isValid) {
                    // A way of checking if the user has seen the experience before should be implemented
                    // Otherwise the user will see constant notifications for already seen experiences
                    /*
                  _showLocalNotification(
                    index,
                    context,
                    _experience.creator.username.getOrCrash(),
                    _experience.title.getOrCrash(),
                  );
                   */
                    return ExpansionExperienceCard(
                      experience: _experience,
                      key: Key(_experience.id.toString()),
                      reloadFunction: () => context
                          .read<MainFeedWatcherBloc>()
                          .add(
                            const MainFeedWatcherEvent.watchMainFeedStarted(),
                          ),
                    );
                  } else {
                    return ErrorCard(
                      entityType: S.of(context).experience,
                      valueFailureString: _experience.failureOption.fold(
                        () => S.of(context).noError,
                        (failure) => failure.toString(),
                      ),
                    );
                  }
                },
              ),
            ),
            loadFailure: (state) => ErrorDisplay(
              retryFunction: () => context.read<MainFeedWatcherBloc>().add(
                    const MainFeedWatcherEvent.watchMainFeedStarted(),
                  ),
              failure: state.failure,
              specificMessage: some(S.of(context).notFoundErrorMainFeed),
            ),
          ),
        ),
      );

/*
  void _showLocalNotification(
    int index,
    BuildContext context,
    String experienceTitle,
    String username,
  ) {
    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
      "main_feed_notification",
      "main_feed_notification",
      "World On main feed notifications channel",
      importance: Importance.low,
      playSound: false,
    );
    const platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );
    getIt<FlutterLocalNotificationsPlugin>().show(
      index,
      username,
      experienceTitle,
      platformChannelSpecifics,
    );
  }
   */
}
