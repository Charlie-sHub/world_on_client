import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/application/experience_management/objectives_creation/objectives_creation_bloc.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/created_objective_card.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/objective_creation_form.dart';

import 'created_objective_card.dart';

class ObjectiveCreationCard extends HookWidget {
  const ObjectiveCreationCard({
    Key key,
    @required this.objectiveListOption,
  }) : super(key: key);

  final Option<ObjectiveList> objectiveListOption;

  @override
  Widget build(BuildContext context) {
    final _textEditingController = useTextEditingController();
    return BlocProvider(
      create: (context) => getIt<ObjectivesCreationBloc>()
        ..add(
          ObjectivesCreationEvent.initialized(objectiveListOption),
        ),
      child: BlocConsumer<ObjectivesCreationBloc, ObjectivesCreationState>(
        listenWhen: (previous, current) => true,
        listener: (context, state) => context.read<ExperienceManagementFormBloc>().add(
              ExperienceManagementFormEvent.objectivesChanged(state.objectivesCreated),
            ),
        // TODO: Create buildWhen method
        builder: (context, state) => Card(
          color: WorldOnColors.background,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: WorldOnColors.primary,
            ),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 5),
              Text(
                context.read<ExperienceManagementFormBloc>().state.isEditing ? S.of(context).editObjectives : S.of(context).objectiveCreationCardTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5),
              ImplicitlyAnimatedReorderableList<Objective>(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(10),
                areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
                onReorderFinished: (item, from, to, _newItems) {
                  context.read<ObjectivesCreationBloc>().add(
                        ObjectivesCreationEvent.reorderedList(_newItems),
                      );
                  context.read<ExperienceManagementFormBloc>().add(
                        ExperienceManagementFormEvent.objectivesChanged(_newItems.toImmutableList()),
                      );
                },
                items: context.read<ObjectivesCreationBloc>().state.objectivesCreated.asList(),
                itemBuilder: (context, animation, _objective, i) {
                  if (_objective.isValid) {
                    return Reorderable(
                      key: Key(_objective.id.getOrCrash()),
                      builder: (context, animation, inDrag) => CreatedObjectiveCard(
                        animation: animation,
                        objective: _objective,
                        key: Key(_objective.id.toString()),
                      ),
                    );
                  } else {
                    // TODO: Just in case make these deleteable
                    // It doesn't make much sense to make these re-orderable anyway
                    return Reorderable(
                      key: Key(_objective.id.getOrCrash()),
                      builder: (context, animation, inDrag) => ErrorCard(
                        entityType: S.of(context).objective,
                        valueFailureString: _objective.failureOption.fold(
                          () => S.of(context).noError,
                          (failure) => failure.toString(),
                        ),
                      ),
                    );
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: BlocProvider(
                  create: (context) => getIt<ObjectiveFormBloc>()
                    ..add(
                      const ObjectiveFormEvent.initialized(),
                    ),
                  child: BlocConsumer<ObjectiveFormBloc, ObjectiveFormState>(
                    listener: (context, state) => _objectiveFormListener(
                      context,
                      state,
                      _textEditingController,
                    ),
                    builder: (context, state) => ObjectiveCreationForm(
                      textEditingController: _textEditingController,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _objectiveFormListener(
    BuildContext context,
    ObjectiveFormState state,
    TextEditingController _textEditingController,
  ) {
    if (state.isSubmitting) {
      _textEditingController.clear();
      context.read<ObjectivesCreationBloc>().add(
            ObjectivesCreationEvent.addedObjective(state.objective),
          );
    }
  }
}
