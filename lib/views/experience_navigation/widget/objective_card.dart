import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ObjectiveCard extends StatelessWidget {
  final Objective objective;

  const ObjectiveCard({Key key, @required this.objective}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.bloc<ObjectivesTrackerBloc>().add(
            ObjectivesTrackerEvent.objectiveAccomplished(objective),
          ),
      child: Card(
        shape: const RoundedRectangleBorder(),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: AutoSizeText(
                  objective.description.getOrCrash(),
                  style: const TextStyle(
                    fontSize: 12,
                    color: WorldOnColors.background,
                  ),
                ),
              ),
            ),
            const Expanded(
              child: Image(
                image: AssetImage('assets/objective_placeholder.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
