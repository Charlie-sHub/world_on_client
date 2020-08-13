import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/experience_navigation/widget/experience_navigation.dart';

import '../../../injection.dart';
import 'experience_finish/experience_finish.dart';
import 'no_experience_view.dart';

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
            noExperience: (_) => const NoExperienceView(),
            navigatingExperience: (state) => ExperienceNavigation(experience: state.experience),
            finishExperience: (state) => ExperienceFinish(experience: state.experience),
          ),
        ),
      ),
    );
  }
}
