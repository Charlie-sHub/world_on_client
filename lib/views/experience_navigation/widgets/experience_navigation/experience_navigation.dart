import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'package:worldon/application/experience_navigation/map_controller/map_controller_bloc.dart';
import 'package:worldon/application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_navigation/experience_navigation_tab_bar.dart';

import '../../../../injection.dart';
import 'experience_information_tab_view.dart';
import 'map_tab_view.dart';
import 'objectives_tab_view.dart';

class ExperienceNavigation extends StatelessWidget {
  final Experience experience;

  const ExperienceNavigation({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ObjectivesTrackerBloc>()
            ..add(
              ObjectivesTrackerEvent.initialized(
                experience.objectives,
                experience.id,
              ),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<MapControllerBloc>()
            ..add(
              MapControllerEvent.initialized(experience),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<ExperienceLikeActorBloc>()
            ..add(
              ExperienceLikeActorEvent.initialized(
                experience.id,
                context.read<WatchCurrentUserBloc>().state.maybeMap(
                      loadSuccess: (successState) => successState.user.experiencesLikedIds,
                      orElse: () => <UniqueId>{},
                    ),
                experience.likedBy.length,
              ),
            ),
        ),
      ],
      child: BlocListener<ExperienceNavigationWatcherBloc, ExperienceNavigationWatcherState>(
        listener: (context, state) {
          state.maybeMap(
            navigatingExperience: (navigatingState) {
              context.read<MapControllerBloc>().add(
                    MapControllerEvent.initialized(navigatingState.experience),
                  );
              context.read<ObjectivesTrackerBloc>().add(
                    ObjectivesTrackerEvent.initialized(
                      navigatingState.experience.objectives,
                      navigatingState.experience.id,
                    ),
                  );
              context.read<ExperienceLikeActorBloc>().add(
                    ExperienceLikeActorEvent.initialized(
                      navigatingState.experience.id,
                      context.read<WatchCurrentUserBloc>().state.maybeMap(
                            loadSuccess: (successState) => successState.user.experiencesLikedIds,
                            orElse: () => <UniqueId>{},
                          ),
                      navigatingState.experience.likedBy.length,
                    ),
                  );
            },
            orElse: () {},
          );
        },
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              const ExperienceNavigationTabBar(),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
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
      ),
    );
  }
}
