import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/adventure_map_controller/adventure_map_controller_bloc.dart';
import 'package:worldon/application/experience_navigation/recommended_experiences_watcher/recommended_experiences_watcher_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/experience_navigation/widgets/recommendations/adventure_map.dart';
import 'package:worldon/views/experience_navigation/widgets/recommendations/recommended_experiences_bottom_bar.dart';

import '../../../../injection.dart';

class NoExperienceView extends StatelessWidget {
  const NoExperienceView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RecommendedExperiencesWatcherBloc>(
          create: (context) => getIt<RecommendedExperiencesWatcherBloc>()
            ..add(
              const RecommendedExperiencesWatcherEvent
                  .watchRecommendedExperiencesStarted(),
            ),
        ),
        BlocProvider<AdventureMapControllerBloc>(
          create: (context) => getIt<AdventureMapControllerBloc>()
            ..add(
              const AdventureMapControllerEvent.initialized(),
            ),
        ),
      ],
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Text(
                    S.of(context).experienceNavigationNoneChosenTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    S.of(context).experienceNavigationNoneChosenDescription,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const Expanded(
              child: AdventureMap(),
            ),
            const RecommendedExperiencesBottomBar(),
            const SizedBox(height: kBottomNavigationBarHeight - 15),
          ],
        ),
      ),
    );
  }
}
