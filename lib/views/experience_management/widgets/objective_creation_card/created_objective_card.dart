import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:worldon/application/experience_management/objectives_creation/objectives_creation_bloc.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class CreatedObjectiveCard extends StatelessWidget {
  const CreatedObjectiveCard({
    Key? key,
    required this.objective,
    required this.animation,
  }) : super(key: key);

  final Objective objective;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween<double>(
        begin: 1,
        end: 0.95,
      ).animate(animation),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: animation.value * 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image(
              image: objective.imageFile.fold(
                () => CachedNetworkImageProvider(objective.imageURL),
                (_imageFile) => FileImage(_imageFile),
              ),
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
                height: 90,
                width: 140,
                child: AutoSizeText(
                  objective.description.getOrCrash(),
                  overflow: TextOverflow.fade,
                  minFontSize: 8,
                  maxFontSize: 15,
                  maxLines: 20,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            IconButton(
              iconSize: 35,
              padding: const EdgeInsets.all(0),
              icon: const Icon(
                Icons.delete_forever,
                color: WorldOnColors.red,
              ),
              onPressed: () => context.read<ObjectivesCreationBloc>().add(
                    ObjectivesCreationEvent.removedObjective(objective),
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
    );
  }
}
