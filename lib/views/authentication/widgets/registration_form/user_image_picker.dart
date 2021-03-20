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
            (imageFile) => FlatButton(
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
                backgroundImage: FileImage(imageFile),
              ),
            ),
          ),
    );
  }

  Future<File> _openDialog(BuildContext context) async {
    return showDialog<File>(
      context: context,
      useSafeArea: true,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        backgroundColor: WorldOnColors.background,
        actions: [
          RaisedButton(
            onPressed: () async {
              final _imageFile = await _pickImage(
                ImageSource.camera,
                context,
              );
              Navigator.of(context).pop(_imageFile);
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
              final _imageFile = await _pickImage(
                ImageSource.gallery,
                context,
              );
              Navigator.of(context).pop(_imageFile);
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

  Future<File> _pickImage(ImageSource source, BuildContext context) async {
    final _imagePicked = await ImagePicker().getImage(
      source: source,
      imageQuality: 50,
    );
    if (_imagePicked != null) {
      return File(_imagePicked.path);
    } else {
      return null;
    }
  }
}
