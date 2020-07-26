import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_actor/experience_navigation_actor_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

import '../../../injection.dart';

class ExperienceNavigation extends StatelessWidget {
  final Option<Experience> experienceOption;

  const ExperienceNavigation({
    Key key,
    @required this.experienceOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceNavigationActorBloc>()
        ..add(
          ExperienceNavigationActorEvent.initialized(none()),
        ),
      child: BlocListener<NavigationActorBloc, NavigationActorState>(
        listener: (context, navigationState) => navigationState.maybeMap(
          navigateExperienceView: (navigateExperienceState) => navigateExperienceState.experienceOption.fold(
            () => null,
            (experience) => context.bloc<ExperienceNavigationActorBloc>().add(
                  ExperienceNavigationActorEvent.initialized(some(experience)),
                ),
          ),
          orElse: () => null,
        ),
        child: experienceOption.fold(
          () => const NoExperienceText(),
          (experience) => const Center(
            child: Text(
              "Experience chosen",
              style: TextStyle(
                color: WorldOnColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
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
