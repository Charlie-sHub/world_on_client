import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';

import '../../../injection.dart';
import 'experience_information_tab_view/experience_information_tab_view.dart';
import 'experience_navigation_tab_bar.dart';
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
