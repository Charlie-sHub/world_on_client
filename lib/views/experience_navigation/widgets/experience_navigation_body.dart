import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/comments/comment_watcher/comment_watcher_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_finish/experience_finish.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_navigation/experience_navigation.dart';
import 'package:worldon/views/experience_navigation/widgets/recommendations/no_experience_view.dart';

import '../../../injection.dart';

class ExperienceNavigationBody extends StatelessWidget {
  final Option<Experience> experienceOption;

  const ExperienceNavigationBody({
    Key? key,
    required this.experienceOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ExperienceNavigationWatcherBloc>()
            ..add(
              ExperienceNavigationWatcherEvent.initialized(none()),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<CommentWatcherBloc>(),
        ),
      ],
      child: BlocListener<NavigationActorBloc, NavigationActorState>(
        listener: (context, state) => state.maybeMap(
          navigateExperienceView: (navigateExperienceState) =>
              navigateExperienceState.experienceOption.fold(
            () {},
            (experience) {
              context.read<ExperienceNavigationWatcherBloc>().add(
                    ExperienceNavigationWatcherEvent.initialized(
                      some(experience),
                    ),
                  );
              context.read<CommentWatcherBloc>().add(
                    CommentWatcherEvent.watchExperienceCommentsStarted(
                      experience.id,
                    ),
                  );
            },
          ),
          orElse: () {},
        ),
        child: BlocBuilder<ExperienceNavigationWatcherBloc, ExperienceNavigationWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            noExperience: (_) => const NoExperienceView(),
            navigatingExperience: (state) => ExperienceNavigation(
              experience: state.experience,
            ),
            finishExperience: (state) => ExperienceFinish(
              experience: state.experience,
            ),
          ),
        ),
      ),
    );
  }
}
