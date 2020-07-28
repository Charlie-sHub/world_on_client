import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

import '../../../injection.dart';
import 'experience_information_tab_view.dart';
import 'map_tab_view.dart';
import 'objectives_tab_view.dart';

class ExperienceNavigation extends StatelessWidget {
  final Experience experience;

  const ExperienceNavigation({Key key, @required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ObjectivesTrackerBloc>()
        ..add(
          ObjectivesTrackerEvent.initialized(experience.objectives),
        ),
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            const ExperienceNavigationTabBar(),
            Expanded(
              child: TabBarView(
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
    );
  }
}

class ExperienceNavigationTabBar extends StatelessWidget {
  const ExperienceNavigationTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      child: const TabBar(
        labelColor: WorldOnColors.white,
        labelPadding: EdgeInsets.all(2),
        indicatorColor: WorldOnColors.primary,
        tabs: [
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: FaIcon(FontAwesomeIcons.stream),
            text: "Experience Info",
          ),
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: FaIcon(FontAwesomeIcons.bullseye),
            text: "Objectives",
          ),
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: FaIcon(FontAwesomeIcons.mapMarkedAlt),
            text: "Map",
          ),
        ],
      ),
    );
  }
}
