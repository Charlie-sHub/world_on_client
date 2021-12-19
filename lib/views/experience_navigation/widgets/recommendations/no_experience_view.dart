import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/adventure_map_controller/adventure_map_controller_bloc.dart';
import 'package:worldon/application/experience_navigation/location_permission/location_permission_bloc.dart';
import 'package:worldon/application/experience_navigation/recommended_experiences_watcher/recommended_experiences_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/experience_navigation/widgets/recommendations/adventure_map.dart';
import 'package:worldon/views/experience_navigation/widgets/recommendations/recommended_experiences_bottom_bar.dart';

class NoExperienceView extends StatelessWidget {
  const NoExperienceView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
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
          BlocProvider<LocationPermissionBloc>(
            create: (context) => getIt<LocationPermissionBloc>()
              ..add(
                const LocationPermissionEvent.initialized(),
              ),
          ),
        ],
        child: Center(
          child: BlocConsumer<LocationPermissionBloc, LocationPermissionState>(
            listener: (context, state) => state.maybeMap(
              granted: (value) {
                context.read<RecommendedExperiencesWatcherBloc>().add(
                      const RecommendedExperiencesWatcherEvent
                          .watchRecommendedExperiencesStarted(),
                    );
                context.read<AdventureMapControllerBloc>().add(
                      const AdventureMapControllerEvent.initialized(),
                    );
              },
              orElse: () {},
            ),
            builder: (context, state) => state.map(
              initial: (value) => const WorldOnProgressIndicator(
                size: 50,
              ),
              granted: (_) => Column(
                children: [
                  const Expanded(
                    child: AdventureMap(),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.of(context).experienceNavigationNoneChosenDescription,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const RecommendedExperiencesBottomBar(),
                  const SizedBox(height: kBottomNavigationBarHeight - 15),
                ],
              ),
              denied: (_) => ErrorDisplay(
                // TODO: Refactor this part so the UI is not creating an error just to display the error display
                failure: const Failure.coreData(
                  CoreDataFailure.geoLocationError(errorString: ""),
                ),
                retryFunction: () => context.read<LocationPermissionBloc>().add(
                      const LocationPermissionEvent.initialized(),
                    ),
                specificMessage: some(
                  S.of(context).locationPermission,
                ),
              ),
            ),
          ),
        ),
      );
}
