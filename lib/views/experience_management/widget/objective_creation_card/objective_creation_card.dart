import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/application/experience_management/objectives_creation/objectives_creation_bloc.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/experience_management/widget/objective_creation_card/created_objective_card.dart';
import 'package:worldon/views/experience_management/widget/objective_creation_card/description_text_field.dart';
import 'package:worldon/views/experience_management/widget/objective_creation_card/objective_coordinates_picker.dart';
import 'package:worldon/views/experience_management/widget/objective_creation_card/submit_button.dart';

class ObjectiveCreationCard extends StatefulWidget {
  const ObjectiveCreationCard({
    Key key,
  }) : super(key: key);

  @override
  _ObjectiveCreationCardState createState() => _ObjectiveCreationCardState();
}

class _ObjectiveCreationCardState extends State<ObjectiveCreationCard> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                      return CreatedObjectiveCard(objective: _objective);
                    } else {
                      return ErrorCard(
                        entityType: "Objective",
                        valueFailureString: _objective.failureOption.fold(
                          () => "No error",
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
                  create: (context) => getIt<ObjectiveFormBloc>(),
                  child: BlocConsumer<ObjectiveFormBloc, ObjectiveFormState>(
                    listener: _objectiveFormListener,
                    builder: (context, state) => Form(
                      autovalidate: state.showErrorMessages,
                      child: Column(
                        children: <Widget>[
                          DescriptionTextField(
                            textController: _textEditingController,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                child: state.objective.imageFile.fold(
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
                                        const Text(
                                          "Please select a picture",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.red),
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
                              ),
                              const ObjectiveCoordinatePicker(),
                            ],
                          ),
                          const SubmitButton(),
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

  void _objectiveFormListener(BuildContext context, ObjectiveFormState state) {
    if (state.isSubmitting) {
      _textEditingController.clear();
      context.bloc<ObjectivesCreationBloc>().add(
            ObjectivesCreationEvent.addedObjective(
              state.objective,
            ),
          );
    }
  }

  Future _pickImage(BuildContext context) async {
    final _imagePicked = await ImagePicker().getImage(source: ImageSource.gallery);
    final _imageFile = File(_imagePicked.path);
    context.bloc<ObjectiveFormBloc>().add(ObjectiveFormEvent.imageChanged(_imageFile));
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
