import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart';
import 'package:worldon/views/core/widget/cards/experience_card.dart';
import 'package:worldon/views/core/widget/cards/experience_error_card.dart';
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';

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
        builder: onBuild,
      ),
    );
  }

  Widget onBuild(BuildContext context, MainFeedWatcherState state) => state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => WorldOnProgressIndicator(),
        loadSuccess: (state) => RefreshIndicator(
          onRefresh: () async => context.bloc<MainFeedWatcherBloc>().add(
                const MainFeedWatcherEvent.watchMainFeedStarted(),
              ),
          child: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: state.experiences.size,
            itemBuilder: (context, index) {
              final _experience = state.experiences[index];
              if (_experience.isValid) {
                return ExperienceCard(experience: _experience);
              } else {
                return ExperienceErrorCard(experience: _experience);
              }
            },
          ),
        ),
        loadFailure: (state) => InkWell(
          onTap: () async => context.bloc<MainFeedWatcherBloc>().add(
                const MainFeedWatcherEvent.watchMainFeedStarted(),
              ),
          child: CriticalErrorDisplay(failure: state.failure),
        ),
      );
}
