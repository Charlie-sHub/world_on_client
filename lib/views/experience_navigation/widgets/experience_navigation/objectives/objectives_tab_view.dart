import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'package:worldon/application/experience_navigation/map_controller/map_controller_bloc.dart';
import 'package:worldon/application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_navigation/objectives/objective_card.dart';

class ObjectivesTabView extends StatelessWidget {
  final Experience experience;

  const ObjectivesTabView({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocListener<ObjectivesTrackerBloc, ObjectivesTrackerState>(
        listener: (context, state) {
          if (state.isFinished) {
            context.read<ExperienceNavigationWatcherBloc>().add(
                  // Is it really necessary to send back the experience?
                  // The ExperienceNavigationBody could use the experienceOption for the finish view
                  ExperienceNavigationWatcherEvent.allObjectivesAccomplished(
                    experience,
                  ),
                );
          } else {
            context.read<MapControllerBloc>().add(
                  MapControllerEvent.objectivesChanged(state.objectivesToDo),
                );
          }
        },
        child: Column(
          children: [
            BlocBuilder<ObjectivesTrackerBloc, ObjectivesTrackerState>(
              buildWhen: (previous, current) =>
                  previous.showExplanation != current.showExplanation,
              builder: (context, state) => state.showExplanation
                  ? Text(
                      S.of(context).objectivesExplanation,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    )
                  : Container(),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(
                  bottom: kFloatingActionButtonMargin + 50,
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                itemCount: experience.objectives.getOrCrash().size,
                itemBuilder: (context, index) {
                  final objective = experience.objectives.getOrCrash().get(
                        index,
                      );
                  if (objective.isValid) {
                    return ObjectiveCard(
                      objective: objective,
                      key: Key(objective.id.toString()),
                    );
                  } else {
                    return ErrorCard(
                      entityType: S.of(context).objective,
                      valueFailureString: objective.failureOption.fold(
                        () => S.of(context).noError,
                        (failure) => failure.toString(),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      );
}
