import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/core/widget/cards/experience_card/experience_card.dart';
import 'package:worldon/views/core/widget/error/error_display.dart';
import 'package:worldon/views/core/widget/misc/world_on_progress_indicator.dart';

import '../../../injection.dart';

class MainFeedBody extends StatelessWidget {
  const MainFeedBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MainFeedWatcherBloc>()
        ..add(
          const MainFeedWatcherEvent.watchMainFeedStarted(),
        ),
      child: BlocBuilder<MainFeedWatcherBloc, MainFeedWatcherState>(
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const WorldOnProgressIndicator(),
          loadSuccess: (state) => RefreshIndicator(
            onRefresh: () async => context.bloc<MainFeedWatcherBloc>().add(
                  const MainFeedWatcherEvent.watchMainFeedStarted(),
                ),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(10),
              itemCount: state.experiences.size,
              itemBuilder: (context, index) {
                final _experience = state.experiences[index];
                if (_experience.isValid) {
                  return ExperienceCard(
                    experience: _experience,
                    key: Key(_experience.id.toString()),
                  );
                } else {
                  return ErrorCard(
                    entityType: "Experience",
                    valueFailureString: _experience.failureOption.fold(
                      () => "",
                      (failure) => failure.toString(),
                    ),
                  );
                }
              },
            ),
          ),
          loadFailure: (state) => ErrorDisplay(
            retryFunction: () => context.bloc<MainFeedWatcherBloc>().add(
                  const MainFeedWatcherEvent.watchMainFeedStarted(),
                ),
            failure: state.failure,
          ),
        ),
      ),
    );
  }
}
