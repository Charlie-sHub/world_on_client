import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/application/experience_management/objectives_creation/objectives_creation_bloc.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/created_objectives_list.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/objective_creation_form.dart';

class ObjectiveCreationCard extends HookWidget {
  final Option<ObjectiveList> objectiveListOption;
  final GlobalKey<State<StatefulWidget>> objectivesShowKey;

  const ObjectiveCreationCard({
    Key? key,
    required this.objectiveListOption,
    required this.objectivesShowKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _descriptionTextController = useTextEditingController();
    final _titleTextController = useTextEditingController();
    return BlocProvider(
      create: (context) => getIt<ObjectivesCreationBloc>()
        ..add(
          ObjectivesCreationEvent.initialized(objectiveListOption),
        ),
      child: BlocConsumer<ObjectivesCreationBloc, ObjectivesCreationState>(
        listenWhen: (previous, current) =>
            previous.objectivesCreated != current.objectivesCreated,
        listener: (context, state) =>
            context.read<ExperienceManagementFormBloc>().add(
                  ExperienceManagementFormEvent.objectivesChanged(
                    state.objectivesCreated,
                  ),
                ),
        builder: (context, state) {
          final _formState = context.read<ExperienceManagementFormBloc>().state;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                _formState.isEditing
                    ? S.of(context).editObjectives
                    : S.of(context).objectiveCreationCardTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5),
              CreatedObjectivesList(),
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
                      _descriptionTextController,
                      _titleTextController,
                    ),
                    builder: (context, state) => ObjectiveCreationForm(
                      descriptionTextController: _descriptionTextController,
                      titleTextController: _titleTextController,
                      showKey: objectivesShowKey,
                    ),
                  ),
                ),
              ),
              if (_formState.showErrorMessages &&
                  !_formState.experience.objectives.isValid())
                Text(
                  S.of(context).noObjectivesErrorMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )
              else
                Container(),
            ],
          );
        },
      ),
    );
  }

  void _objectiveFormListener(
    BuildContext context,
    ObjectiveFormState state,
    TextEditingController _descriptionTextController,
    TextEditingController _titleTextController,
  ) {
    if (state.isSubmitting) {
      _descriptionTextController.clear();
      _titleTextController.clear();
      context.read<ObjectivesCreationBloc>().add(
            ObjectivesCreationEvent.addedObjective(state.objective),
          );
    }
  }
}
