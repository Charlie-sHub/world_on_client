import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:worldon/application/experience_management/objectives_creation/objectives_creation_bloc.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/created_objective_card.dart';

class CreatedObjectivesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final objectives = context.read<ObjectivesCreationBloc>().state.objectivesCreated.asList();
    return objectives.isNotEmpty
        ? ImplicitlyAnimatedReorderableList<Objective>(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
            onReorderFinished: (item, from, to, newItems) {
              context.read<ObjectivesCreationBloc>().add(
                    ObjectivesCreationEvent.reorderedList(
                      newItems,
                    ),
                  );
            },
            items: objectives,
            itemBuilder: (context, animation, objective, i) {
              if (objective.isValid) {
                return Reorderable(
                  key: Key("orderable_${objective.id.getOrCrash()}"),
                  builder: (context, animation, inDrag) => CreatedObjectiveCard(
                    animation: animation,
                    objective: objective,
                    key: Key(objective.id.toString()),
                  ),
                );
              } else {
                return Reorderable(
                  key: Key("orderable_${objective.id.getOrCrash()}"),
                  builder: (context, animation, inDrag) => ErrorCard(
                    entityType: S.of(context).objective,
                    valueFailureString: objective.failureOption.fold(
                      () => S.of(context).noError,
                      (failure) => failure.toString(),
                    ),
                  ),
                );
              }
            },
          )
        : Text(
            S.of(context).noObjectivesErrorMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w300,
              fontSize: 15,
            ),
          );
  }
}
