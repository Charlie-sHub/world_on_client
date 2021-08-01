import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/functions/open_picture_select_dialog.dart';
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
      autovalidateMode:
          _objectiveFormState.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
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
                        final _imageFile = await openPictureSelectDialog(context);
                        if (_imageFile != null) {
                          context.read<ObjectiveFormBloc>().add(
                                ObjectiveFormEvent.imageChanged(_imageFile),
                              );
                        }
                      },
                    ),
                    if (_objectiveFormState.showErrorMessages &&
                        _objectiveFormState.objective.imageFile.isNone())
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
                      final _imageFile = await openPictureSelectDialog(context);
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
              Text(
                S.of(context).objectiveLocalization,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5),
              ObjectiveCoordinatePicker(),
            ],
          ),
          const SubmitObjectiveButton(),
        ],
      ),
    );
  }
}
