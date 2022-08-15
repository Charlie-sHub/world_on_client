import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/reward_form/reward_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/functions/open_picture_select_dialog.dart';
import 'package:worldon/views/experience_management/widgets/reward_creation_card/reward_description_text_field.dart';
import 'package:worldon/views/experience_management/widgets/reward_creation_card/reward_name_text_field.dart';
import 'package:worldon/views/experience_management/widgets/reward_creation_card/submit_reward_button.dart';

class RewardCreationForm extends StatelessWidget {
  final TextEditingController nameTextEditingController;
  final TextEditingController descriptionTextEditingController;

  const RewardCreationForm({
    Key? key,
    required this.nameTextEditingController,
    required this.descriptionTextEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rewardFormState = context.read<RewardFormBloc>().state;
    return Form(
      autovalidateMode:
          rewardFormState.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Column(
        children: <Widget>[
          RewardNameTextField(textController: nameTextEditingController),
          RewardDescriptionTextField(textController: descriptionTextEditingController),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              rewardFormState.reward.imageFile.fold(
                () => Column(
                  children: <Widget>[
                    IconButton(
                      iconSize: 80,
                      icon: const Icon(
                        Icons.photo_camera,
                      ),
                      onPressed: () => _imageChanged(context),
                    ),
                    if (rewardFormState.showErrorMessages && rewardFormState.reward.imageFile.isNone())
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
                    onPressed: () => _imageChanged(context),
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: FileImage(imageFile),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SubmitRewardButton(),
        ],
      ),
    );
  }

  Future<void> _imageChanged(BuildContext context) => openPictureSelectDialog(context).then(
        (imageFile) {
          if (imageFile != null) {
            context.read<RewardFormBloc>().add(
                  RewardFormEvent.imageChanged(
                    imageFile,
                  ),
                );
          }
        },
      );
}
