import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

import '../../../injection.dart';

class MainFeedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainFeedWatcherBloc>(
      create: (context) => getIt<MainFeedWatcherBloc>()
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
              loadInProgress: onLoadInProgress,
              loadSuccess: (state) =>
                ListView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: state.experiences.size,
                  itemBuilder: (context, index) {
                    final _experience = state.experiences[index];
                    if (_experience.isValid) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: const <Widget>[
                                  Expanded(
                                    child: Image(
                                      // TODO: Change to the real image from the experience
                                      image: AssetImage('assets/experience_placeholder_image.jpg'),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    _experience.name.getOrCrash(),
                                    style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: WorldOnColors.background,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    _experience.description.getOrCrash(),
                                    style: const TextStyle(
                                      fontSize: 10,
                                      color: WorldOnColors.background,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      RaisedButton(
                                        color: WorldOnColors.accent,
                                        // TODO: Add the event to add the experience to the log
                                        onPressed: null,
                                        child: const Text("Add to Log"),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Container(
                    color: Colors.red,
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

  Widget onLoadInProgress(_) =>
    const Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: CircularProgressIndicator(),
      ),
    );
}
