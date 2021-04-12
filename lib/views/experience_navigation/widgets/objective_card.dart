import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class ObjectiveCard extends StatelessWidget {
  final Objective objective;

  const ObjectiveCard({Key key, @required this.objective}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5),
            child: InkWell(
              onTap: () => showDialog(
                context: context,
                builder: (context) => Dialog(
                  backgroundColor: WorldOnColors.primary,
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: CachedNetworkImage(
                        imageUrl: objective.imageURL,
                        progressIndicatorBuilder: (context, url, progress) => const Padding(
                          padding: EdgeInsets.all(15),
                          child: WorldOnProgressIndicator(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              child: CachedNetworkImage(
                imageUrl: objective.imageURL,
                progressIndicatorBuilder: (context, url, progress) => const Padding(
                  padding: EdgeInsets.all(25),
                  child: WorldOnProgressIndicator(),
                ),
                height: 100,
                width: 100,
              ),
            ),
          ),
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
          BlocBuilder<ObjectivesTrackerBloc, ObjectivesTrackerState>(
            builder: (context, state) => state.objectivesToDo.contains(objective)
                ? IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(
                      Icons.done_outline_rounded,
                      color: Colors.grey,
                      size: 30,
                    ),
                    onPressed: () => context.read<ObjectivesTrackerBloc>().add(
                          ObjectivesTrackerEvent.objectiveAccomplished(objective),
                        ),
                  )
                : IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(
                      Icons.done_outline_rounded,
                      color: WorldOnColors.primary,
                      size: 30,
                    ),
                    onPressed: () => context.read<ObjectivesTrackerBloc>().add(
                          ObjectivesTrackerEvent.objectiveUnaccomplished(objective),
                        ),
                  ),
          ),
        ],
      ),
    );
  }
}
