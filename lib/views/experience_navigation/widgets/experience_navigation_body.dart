import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/comments/comment_watcher/comment_watcher_bloc.dart';
import 'package:worldon/application/experience_navigation/adventure_map_controller/adventure_map_controller_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'package:worldon/application/experience_navigation/location_permission/location_permission_bloc.dart';
import 'package:worldon/application/experience_navigation/recommended_experiences_watcher/recommended_experiences_watcher_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_finish/experience_finish.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_navigation/experience_navigation.dart';
import 'package:worldon/views/experience_navigation/widgets/recommendations/no_experience_view.dart';

class ExperienceNavigationBody extends StatelessWidget {
  final Option<Experience> experienceOption;

  const ExperienceNavigationBody({
    Key? key,
    required this.experienceOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: getIt<ExperienceNavigationWatcherBloc>()
              ..add(
                ExperienceNavigationWatcherEvent.initialized(none()),
              ),
          ),
          BlocProvider.value(
            value: getIt<CommentWatcherBloc>(),
          ),
          BlocProvider.value(
            value: getIt<LocationPermissionBloc>()
              ..add(
                const LocationPermissionEvent.initialized(),
              ),
          ),
          BlocProvider.value(
            value: getIt<AdventureMapControllerBloc>()
              ..add(
                const AdventureMapControllerEvent.initialized(),
              ),
          ),
          BlocProvider.value(
            value: getIt<RecommendedExperiencesWatcherBloc>()
              ..add(
                const RecommendedExperiencesWatcherEvent
                    .watchRecommendedExperiencesStarted(),
              ),
          ),
        ],
        child: BlocListener<NavigationActorBloc, NavigationActorState>(
          listener: (context, state) => state.maybeMap(
            navigateExperienceView: (navigateExperienceState) =>
                navigateExperienceState.experienceOption.fold(
              () => null,
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
                return;
              },
            ),
            orElse: () => null,
          ),
          child: BlocBuilder<ExperienceNavigationWatcherBloc,
              ExperienceNavigationWatcherState>(
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
