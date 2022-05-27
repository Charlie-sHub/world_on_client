import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/functions/open_picture_select_dialog.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/objective_coordinates_picker.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/objective_description_text_field.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/objective_title_form_field.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/submit_objective_button.dart';

class ObjectiveCreationForm extends StatelessWidget {
  const ObjectiveCreationForm({
    required this.descriptionTextController,
    required this.titleTextController,
    required this.showKey,
    Key? key,
  }) : super(key: key);

  final TextEditingController descriptionTextController;
  final TextEditingController titleTextController;
  final GlobalKey<State<StatefulWidget>> showKey;

  @override
  Widget build(BuildContext context) {
    final _objectiveFormState = context.read<ObjectiveFormBloc>().state;
    return Showcase(
      key: showKey,
      description: S.of(context).objectivesShowCase,
      overlayPadding: const EdgeInsets.all(5),
      child: Form(
        autovalidateMode: _objectiveFormState.showErrorMessages
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: Column(
          children: <Widget>[
            ObjectiveTitleFormField(
              textController: titleTextController,
            ),
            const SizedBox(height: 5),
            ObjectiveDescriptionTextField(
              textController: descriptionTextController,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (_objectiveFormState.objective.imageFile != null)
                  _objectiveFormState.objective.imageFile!.fold(
                    () => IconButton(
                      iconSize: 80,
                      icon: const Icon(
                        Icons.photo_camera,
                      ),
                      onPressed: () => _imageChanged(context),
                    ),
                    (imageFile) => Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () => _imageChanged(context),
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
      ),
    );
  }

  Future<void> _imageChanged(BuildContext context) =>
      openPictureSelectDialog(context).then(
        (imageFile) {
          if (imageFile != null) {
            context.read<ObjectiveFormBloc>().add(
                  ObjectiveFormEvent.imageChanged(
                    imageFile,
                  ),
                );
          }
        },
      );
}
