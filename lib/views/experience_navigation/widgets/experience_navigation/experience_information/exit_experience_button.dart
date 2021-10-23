import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExitExperienceButton extends StatelessWidget {
  const ExitExperienceButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.close_rounded,
        color: WorldOnColors.red,
        size: 25,
      ),
      padding: const EdgeInsets.all(5),
      constraints: const BoxConstraints(),
      onPressed: () {
        context.read<ExperienceNavigationWatcherBloc>().add(
              ExperienceNavigationWatcherEvent.initialized(
                none(),
              ),
            );
        context.read<NavigationActorBloc>().add(
              NavigationActorEvent.experienceNavigationTapped(
                none(),
              ),
            );
      },
    );
  }
}
