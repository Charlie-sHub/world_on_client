import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/objectives_creation/objectives_creation_bloc.dart';
import 'package:worldon/core/assets.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class CreatedObjectiveCard extends StatelessWidget {
  const CreatedObjectiveCard({
    Key key,
    @required this.objective,
  }) : super(key: key);

  final Objective objective;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image(
                image: FileImage(
                  objective.imageFile.fold(
                    () => File(Assets.objectivePlaceholder),
                    dartz.id,
                  ),
                ),
                fit: BoxFit.fill,
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
            IconButton(
              iconSize: 40,
              icon: const Icon(
                Icons.delete_forever,
                color: WorldOnColors.red,
              ),
              onPressed: () => context.read<ObjectivesCreationBloc>().add(
                    ObjectivesCreationEvent.removedObjective(objective),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
