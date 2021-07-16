import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/world_on_cached_image.dart';
import 'package:worldon/views/core/widgets/misc/world_on_plasma.dart';

class ObjectiveCard extends StatelessWidget {
  const ObjectiveCard({
    Key? key,
    required this.objective,
  }) : super(key: key);

  final Objective objective;
  static const double _imageSize = 150;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _imageSize,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () => showDialog(
                context: context,
                builder: (context) => Dialog(
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: WorldOnCachedImage(
                      imageURL: objective.imageURL,
                    ),
                  ),
                ),
              ),
              child: SizedBox(
                height: _imageSize,
                width: _imageSize,
                child: CachedNetworkImage(
                  imageUrl: objective.imageURL,
                  fit: BoxFit.fill,
                  progressIndicatorBuilder: (
                    context,
                    url,
                    progress,
                  ) =>
                      WorldOnPlasma(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
                height: _imageSize,
                width: 110,
                child: AutoSizeText(
                  objective.description.getOrCrash(),
                  overflow: TextOverflow.fade,
                  minFontSize: 8,
                  maxFontSize: 15,
                  maxLines: 20,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            BlocBuilder<ObjectivesTrackerBloc, ObjectivesTrackerState>(
              builder: (context, state) => state.objectivesToDo.contains(objective)
                  ? IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.done,
                        color: Colors.grey,
                        size: 40,
                      ),
                      onPressed: () => context.read<ObjectivesTrackerBloc>().add(
                            ObjectivesTrackerEvent.objectiveAccomplished(objective),
                          ),
                    )
                  : IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.done_all,
                        color: WorldOnColors.primary,
                        size: 40,
                      ),
                      onPressed: () => context.read<ObjectivesTrackerBloc>().add(
                            ObjectivesTrackerEvent.objectiveUnaccomplished(objective),
                          ),
                    ),
            ),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
