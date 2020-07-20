import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart';
import 'package:worldon/views/core/misc/common_functions/experience_card_listener.dart';
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/core/widget/experience_card.dart';
import 'package:worldon/views/core/widget/experience_error_card.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';

import '../../../injection.dart';

class MainFeedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainFeedWatcherBloc>(
          create: (context) => getIt<MainFeedWatcherBloc>()
            ..add(
              const MainFeedWatcherEvent.watchMainFeedStarted(),
            ),
        ),
        BlocProvider<ExperienceCardActorBloc>(
          create: (context) => getIt<ExperienceCardActorBloc>(),
        ),
      ],
      child: BlocListener<ExperienceCardActorBloc, ExperienceCardActorState>(
        listener: experienceCardListener,
        child: BlocBuilder<MainFeedWatcherBloc, MainFeedWatcherState>(
          builder: onBuild,
        ),
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
        // TODO: figure a way to make it refresh the state
        // So the main feed tries again or the search searches again, etc.
        loadFailure: (state) => CriticalErrorDisplay(failure: state.failure),
      );
}
