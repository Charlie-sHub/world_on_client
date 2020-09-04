import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'package:worldon/application/experience_navigation/map_controller/map_controller_bloc.dart';
import 'package:worldon/application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/experience_navigation/widget/objective_card.dart';

class ObjectivesTabView extends StatelessWidget {
  final Experience experience;

  const ObjectivesTabView({
    Key key,
    @required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ObjectivesTrackerBloc, ObjectivesTrackerState>(
      listener: (context, state) {
        if (state.isFinished) {
          context.bloc<ExperienceNavigationWatcherBloc>().add(
                // Is it really necessary to send back the experience?
                // The ExperienceNavigationBody could use the experienceOption for the finish view
                ExperienceNavigationWatcherEvent.allObjectivesAccomplished(experience),
              );
        } else {
          context.bloc<MapControllerBloc>().add(
                MapControllerEvent.objectivesChanged(state.objectivesToDo),
              );
        }
      },
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10),
        itemCount: experience.objectives.getOrCrash().size,
        itemBuilder: (context, index) {
          final _objective = experience.objectives.getOrCrash().asSet().elementAt(index);
          if (_objective.isValid) {
            return ObjectiveCard(
              objective: _objective,
              key: Key(_objective.id.toString()),
            );
          } else {
            return ErrorCard(
              entityType: "Objective",
              valueFailureString: _objective.failureOption.fold(
                  () => "",
                  (failure) => failure.toString(),
              ),
            );
          }
        },
      ),
    );
  }
}
