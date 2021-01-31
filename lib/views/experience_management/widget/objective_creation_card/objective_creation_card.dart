import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/application/experience_management/objectives_creation/objectives_creation_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/experience_management/widget/objective_creation_card/created_objective_card.dart';
import 'package:worldon/views/experience_management/widget/objective_creation_card/objective_coordinates_picker.dart';
import 'package:worldon/views/experience_management/widget/objective_creation_card/objective_description_text_field.dart';
import 'package:worldon/views/experience_management/widget/objective_creation_card/submit_objective_button.dart';

class ObjectiveCreationCard extends HookWidget {
  const ObjectiveCreationCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textEditingController = useTextEditingController();
    return BlocProvider(
      create: (context) => getIt<ObjectivesCreationBloc>(),
      child: BlocConsumer<ObjectivesCreationBloc, ObjectivesCreationState>(
        listener: (context, state) => context.bloc<ExperienceManagementFormBloc>().add(
              ExperienceManagementFormEvent.objectivesChanged(state.objectivesCreated),
            ),
        builder: (context, state) => Card(
          color: WorldOnColors.background,
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: WorldOnColors.primary,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 5),
              Text(
                S.of(context).objectiveCreationCardTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.5,
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: state.objectivesCreated.size,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final _objective = state.objectivesCreated.asSet().elementAt(index);
                    if (_objective.isValid) {
                      return CreatedObjectiveCard(
                        objective: _objective,
                        key: Key(_objective.id.toString()),
                      );
                    } else {
                      return ErrorCard(
                        entityType: S.of(context).objective,
                        valueFailureString: _objective.failureOption.fold(
                          () => S.of(context).noError,
                          (failure) => failure.toString(),
                        ),
                      );
                    }
                  },
                ),
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
                    builder: (context, state) => Form(
                      autovalidateMode: context.bloc<ObjectiveFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
                      child: Column(
                        children: <Widget>[
                          ObjectiveDescriptionTextField(textController: _textEditingController),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              state.objective.imageFile.fold(
                                () => Column(
                                  children: <Widget>[
                                    IconButton(
                                      iconSize: 80,
                                      icon: const Icon(
                                        Icons.photo_camera,
                                      ),
                                      onPressed: () async => _pickImage(context),
                                    ),
                                    if (context.bloc<ObjectiveFormBloc>().state.showErrorMessages && context.bloc<ObjectiveFormBloc>().state.objective.imageFile.isNone())
                                      Text(
                                        S.of(context).pictureSelectionMessage,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(color: Colors.red),
                                      )
                                    else
                                      Container(),
                                  ],
                                ),
                                (imageFile) => Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: FlatButton(
                                    onPressed: () async => _pickImage(context),
                                    child: Image(
                                      fit: BoxFit.fitWidth,
                                      image: FileImage(imageFile),
                                    ),
                                  ),
                                ),
                              ),
                              // This widget isn't constant for the same reason the map for the experience can't be constant either
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: ObjectiveCoordinatePicker(),
                              ),
                            ],
                          ),
                          const SubmitObjectiveButton(),
                        ],
                      ),
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
      context.bloc<ObjectivesCreationBloc>().add(
            ObjectivesCreationEvent.addedObjective(state.objective),
          );
    }
  }

  Future _pickImage(BuildContext context) async {
    final _imagePicked = await ImagePicker().getImage(source: ImageSource.gallery);
    if (_imagePicked != null) {
      final _imageFile = File(_imagePicked.path);
      context.bloc<ObjectiveFormBloc>().add(ObjectiveFormEvent.imageChanged(_imageFile));
    }
  }
}
