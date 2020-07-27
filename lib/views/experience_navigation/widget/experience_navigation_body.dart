import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/experience_navigation/widget/experience_finish.dart';
import 'package:worldon/views/experience_navigation/widget/experience_navigation.dart';

import '../../../injection.dart';

class ExperienceNavigationBody extends StatelessWidget {
  final Option<Experience> experienceOption;

  const ExperienceNavigationBody({
    Key key,
    @required this.experienceOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceNavigationWatcherBloc>()
        ..add(
          ExperienceNavigationWatcherEvent.initialized(none()),
        ),
      child: BlocListener<NavigationActorBloc, NavigationActorState>(
        listener: (context, navigationState) => navigationState.maybeMap(
          navigateExperienceView: (navigateExperienceState) => navigateExperienceState.experienceOption.fold(
            () => null,
            (experience) => context.bloc<ExperienceNavigationWatcherBloc>().add(
                  ExperienceNavigationWatcherEvent.initialized(some(experience)),
                ),
          ),
          orElse: () => null,
        ),
        child: BlocBuilder<ExperienceNavigationWatcherBloc, ExperienceNavigationWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            noExperience: (_) => const NoExperienceText(),
            navigatingExperience: (state) => ExperienceNavigation(experience: state.experience),
            finishExperience: (state) => ExperienceFinish(experience: state.experience),
          ),
        ),
      ),
    );
  }
}

class NoExperienceText extends StatelessWidget {
  const NoExperienceText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "No Experience chosen",
              style: TextStyle(
                color: WorldOnColors.red,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Please select an Experience to start the adventure of your life!",
              style: TextStyle(
                color: WorldOnColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
