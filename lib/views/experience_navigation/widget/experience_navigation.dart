import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/experience_navigation/widget/experience_information_tab_view/experience_information_tab_view.dart';
import 'package:worldon/views/experience_navigation/widget/experience_navigation_tab_bar.dart';
import 'package:worldon/views/experience_navigation/widget/map_tab_view.dart';
import 'package:worldon/views/experience_navigation/widget/objectives_tab_view.dart';

import '../../../injection.dart';

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
