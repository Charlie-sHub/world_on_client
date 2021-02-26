import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class UserImagePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: context.bloc<RegistrationFormBloc>().state.user.imageFileOption.fold(
            () => Column(
              children: <Widget>[
                IconButton(
                  iconSize: 80,
                  icon: const Icon(
                    Icons.photo_camera,
                  ),
                  onPressed: () async => _openDialog(context),
                ),
                if (context.bloc<RegistrationFormBloc>().state.showErrorMessages)
                  Text(
                    S.of(context).pictureSelectionMessage,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.red),
                  )
                else
                  Container(),
              ],
            ),
            (imageFile) => FlatButton(
              onPressed: () async => _openDialog(context),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(imageFile),
              ),
            ),
          ),
    );
  }

  Future _openDialog(BuildContext context) async {
    await showDialog<bool>(
      context: context,
      useSafeArea: true,
      barrierDismissible: true,
      child: AlertDialog(
        backgroundColor: WorldOnColors.background,
        actions: [
          RaisedButton(
            onPressed: () async {
              await _pickImage(
                ImageSource.camera,
                context,
              );
              Navigator.of(context).pop();
            },
            child: Text(
              S.of(context).camera,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () async {
              await _pickImage(
                ImageSource.gallery,
                context,
              );
              Navigator.of(context).pop();
            },
            child: Text(
              S.of(context).gallery,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future _pickImage(ImageSource source, BuildContext context) async {
    final _imagePicked = await ImagePicker().getImage(
      source: source,
      imageQuality: 50,
    );
    if (_imagePicked != null) {
      final _imageFile = File(_imagePicked.path);
      context.bloc<RegistrationFormBloc>().add(
            RegistrationFormEvent.imageChanged(_imageFile),
          );
    }
  }
}
