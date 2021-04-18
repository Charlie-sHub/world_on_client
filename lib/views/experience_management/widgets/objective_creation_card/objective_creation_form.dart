import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/misc/image_picker_dialog.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/objective_coordinates_picker.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/objective_description_text_field.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/submit_objective_button.dart';

class ObjectiveCreationForm extends StatelessWidget {
  final TextEditingController textEditingController;

  const ObjectiveCreationForm({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _objectiveFormState = context.read<ObjectiveFormBloc>().state;
    return Form(
      autovalidateMode: _objectiveFormState.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Column(
        children: <Widget>[
          ObjectiveDescriptionTextField(textController: textEditingController),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _objectiveFormState.objective.imageFile.fold(
                () => Column(
                  children: <Widget>[
                    IconButton(
                      iconSize: 80,
                      icon: const Icon(
                        Icons.photo_camera,
                      ),
                      onPressed: () async {
                        final _imageFile = await _openDialog(context);
                        if (_imageFile != null) {
                          context.read<ObjectiveFormBloc>().add(
                                ObjectiveFormEvent.imageChanged(_imageFile),
                              );
                        }
                      },
                    ),
                    if (_objectiveFormState.showErrorMessages && _objectiveFormState.objective.imageFile.isNone())
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
                  child: TextButton(
                    onPressed: () async {
                      final _imageFile = await _openDialog(context);
                      if (_imageFile != null) {
                        context.read<ObjectiveFormBloc>().add(
                              ObjectiveFormEvent.imageChanged(_imageFile),
                            );
                      }
                    },
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
    );
  }

  Future<File?> _openDialog(BuildContext context) async {
    return showDialog<File>(
      context: context,
      useSafeArea: true,
      barrierDismissible: true,
      builder: (context) => ImagePickerDialog(),
    );
  }
}
