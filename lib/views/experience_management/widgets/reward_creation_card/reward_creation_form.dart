import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/reward_form/reward_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/misc/image_picker_dialog.dart';
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
    final _rewardFormState = context.read<RewardFormBloc>().state;
    return Form(
      autovalidateMode: _rewardFormState.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Column(
        children: <Widget>[
          RewardNameTextField(textController: nameTextEditingController),
          RewardDescriptionTextField(textController: descriptionTextEditingController),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _rewardFormState.reward.imageFile.fold(
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
                          context.read<RewardFormBloc>().add(
                                RewardFormEvent.imageChanged(_imageFile),
                              );
                        }
                      },
                    ),
                    if (_rewardFormState.showErrorMessages && _rewardFormState.reward.imageFile.isNone())
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
                        context.read<RewardFormBloc>().add(
                              RewardFormEvent.imageChanged(_imageFile),
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
            ],
          ),
          const SubmitRewardButton(),
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
