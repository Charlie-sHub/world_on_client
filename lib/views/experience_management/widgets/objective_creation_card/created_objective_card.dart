import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:worldon/application/experience_management/objectives_creation/objectives_creation_bloc.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';

class CreatedObjectiveCard extends StatelessWidget {
  const CreatedObjectiveCard({
    Key? key,
    required this.objective,
    required this.animation,
  }) : super(key: key);

  final Objective objective;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) => ScaleTransition(
        scale: Tween<double>(begin: 1, end: 0.95).animate(animation),
        child: Slidable(
          key: Key(objective.id.getOrCrash()),
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              IconButton(
                color: Colors.red,
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () => context.read<ObjectivesCreationBloc>().add(
                      ObjectivesCreationEvent.removedObjective(objective),
                    ),
              ),
            ],
          ),
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: animation.value * 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                if (objective.imageFile != null &&
                        objective.imageFile!.isSome() ||
                    objective.imageURL.isNotEmpty)
                  Image(
                    image: objective.imageFile!.fold(
                      () => CachedNetworkImageProvider(objective.imageURL),
                      (imageFile) => FileImage(imageFile),
                    ),
                    height: 100,
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      height: 90,
                      width: 150,
                      child: Column(
                        children: [
                          if (objective.title != null) ...[
                            AutoSizeText(
                              objective.title!.getOrCrash(),
                              overflow: TextOverflow.fade,
                              minFontSize: 10,
                              maxFontSize: 18,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                          ],
                          AutoSizeText(
                            objective.description.getOrCrash(),
                            overflow: TextOverflow.fade,
                            minFontSize: 8,
                            maxFontSize: 15,
                            maxLines: 20,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Handle(
                  child: Icon(
                    Icons.drag_indicator_rounded,
                    size: 35,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
