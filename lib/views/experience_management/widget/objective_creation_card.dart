import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/application/experience_management/objectives_creation/objectives_creation_bloc.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/string_constants.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';

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

class CreatedObjectiveCard extends StatelessWidget {
  const CreatedObjectiveCard({
    Key key,
    @required this.objective,
  }) : super(key: key);

  final Objective objective;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image(
                image: FileImage(
                  objective.imageFile.fold(
                    () => File('assets/objective_placeholder.jpg'),
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
            Expanded(
              child: IconButton(
                iconSize: 40,
                icon: Icon(
                  Icons.delete_forever,
                  color: WorldOnColors.red,
                ),
                onPressed: () => context.bloc<ObjectivesCreationBloc>().add(
                      ObjectivesCreationEvent.removedObjective(objective),
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({
    Key key,
    this.textController,
  }) : super(key: key);
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    // TODO: Find a better way to reset this field after submitting
    // I don't like having to use a stateful widget only for resetting the description
    // but couldn't think of anything else, at least nothing elegant
    // Maybe i could try again with changing the value of the text controller depending on the bloc state
    return TextFormField(
      controller: textController,
      maxLength: EntityDescription.maxLength,
      onChanged: (value) => context.bloc<ObjectiveFormBloc>().add(
            ObjectiveFormEvent.descriptionChanged(value),
          ),
      validator: (_) => context.bloc<ObjectiveFormBloc>().state.objective.description.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The description can't be empty",
              stringExceedsLength: (_) => "The description is too long",
              stringWithInvalidCharacters: (_) => "The description has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      maxLines: 2,
      decoration: const InputDecoration(
        labelText: "Description",
        prefixIcon: Icon(Icons.description),
      ),
    );
  }
}

class ObjectiveCoordinatePicker extends StatelessWidget {
  const ObjectiveCoordinatePicker({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Implement the map for selecting the coordinates
    return Expanded(
      child: IconButton(
        iconSize: 80,
        icon: Icon(Icons.map),
        onPressed: () => FlushbarHelper.createInformation(
          message: "This is just a placeholder",
        ).show(context),
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => context.bloc<ObjectiveFormBloc>().add(
            const ObjectiveFormEvent.submitted(),
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Icon(Icons.check),
          SizedBox(width: 5),
          Text("Submit"),
        ],
      ),
    );
  }
}
