import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart';

import '../../../injection.dart';

class MainFeedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainFeedWatcherBloc>(
      create: (context) =>
      getIt<MainFeedWatcherBloc>()
        ..add(
          const MainFeedWatcherEvent.watchMainFeedStarted(),
        ),
      child: BlocBuilder<MainFeedWatcherBloc, MainFeedWatcherState>(
        // Ideally MainFeedWatcherBloc and ExperienceCardActorBloc would be provided with a MultiBlocProvider
        // But then how to build with MainFeedWatcherBloc and listen with the ExperienceCardActorBloc?
        builder: (context, state) =>
          BlocProvider<ExperienceCardActorBloc>(
            create: (context) => getIt<ExperienceCardActorBloc>(),
            child: state.map(
              initial: (_) => Container(),
              loadInProgress: (_) =>
              const Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(),
                ),
              ),
              loadSuccess: (state) =>
                ListView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: state.experiences.size,
                  itemBuilder: (context, index) {
                    final _experience = state.experiences
                    .;
                    if (_experience.isValid()) {
                    return Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                    );
                    } else {
                    return Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                    );
                    }
                  },
                ),
              loadFailure: (state) =>
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                ),
            ),
          ),
      ),
    );
  }
}
