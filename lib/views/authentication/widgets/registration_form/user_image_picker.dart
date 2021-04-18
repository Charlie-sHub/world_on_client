import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/misc/image_picker_dialog.dart';

class UserImagePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: context.read<RegistrationFormBloc>().state.user.imageFileOption.fold(
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
                      context.read<RegistrationFormBloc>().add(
                            RegistrationFormEvent.imageChanged(_imageFile),
                          );
                    }
                  },
                ),
                if (context.read<RegistrationFormBloc>().state.showErrorMessages)
                  Text(
                    S.of(context).pictureSelectionMessage,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.red),
                  )
                else
                  Container(),
              ],
            ),
            (imageFile) => TextButton(
              onPressed: () async {
                final _imageFile = await _openDialog(context);
                if (_imageFile != null) {
                  context.read<RegistrationFormBloc>().add(
                        RegistrationFormEvent.imageChanged(_imageFile),
                      );
                }
              },
              child: CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(imageFile!),
              ),
            ),
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
