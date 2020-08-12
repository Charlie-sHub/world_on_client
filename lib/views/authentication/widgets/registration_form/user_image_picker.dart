import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';

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
                  onPressed: () async => _pickImage(context),
                ),
                if (context.bloc<RegistrationFormBloc>().state.showErrorMessages)
                  const Text(
                    "Please select a picture",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.red),
                  )
                else
                  Container(),
              ],
            ),
            (imageFile) => FlatButton(
              onPressed: () async => _pickImage(context),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(imageFile),
              ),
            ),
          ),
    );
  }

  Future _pickImage(BuildContext context) async {
    final imagePicked = await ImagePicker().getImage(source: ImageSource.gallery);
    final imageFile = File(imagePicked.path);
    context.bloc<RegistrationFormBloc>().add(RegistrationFormEvent.imageChanged(imageFile));
  }
}
