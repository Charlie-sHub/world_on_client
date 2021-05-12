import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'package:worldon/application/experience_navigation/map_controller/map_controller_bloc.dart';
import 'package:worldon/application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_navigation/experience_navigation_tab_bar.dart';

import '../../../../injection.dart';
import 'experience_information_tab_view.dart';
import 'map_tab_view.dart';
import 'objectives_tab_view.dart';

class ExperienceNavigation extends StatelessWidget {
  final Experience experience;

  const ExperienceNavigation({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ObjectivesTrackerBloc>()
            ..add(
              ObjectivesTrackerEvent.initialized(experience.objectives),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<MapControllerBloc>()
            ..add(
              MapControllerEvent.initialized(experience),
            ),
        ),
      ],
      child: BlocListener<ExperienceNavigationWatcherBloc, ExperienceNavigationWatcherState>(
        listener: (context, state) {
          state.maybeMap(
            navigatingExperience: (value) {
              context.read<MapControllerBloc>().add(MapControllerEvent.initialized(value.experience));
              context.read<ObjectivesTrackerBloc>().add(ObjectivesTrackerEvent.initialized(value.experience.objectives));
            },
            orElse: () {},
          );
        },
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              const ExperienceNavigationTabBar(),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ExperienceInformationTabView(experience: experience),
                    ObjectivesTabView(experience: experience),
                    MapTabView(experience: experience),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
