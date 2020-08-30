import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/core/assets.dart';

class UserImagePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return context.bloc<ProfileEditingFormBloc>().state.user.imageFileOption.fold(
          () => FlatButton(
            onPressed: () async => _pickImage(context),
            child: const Hero(
              tag: "userImage",
              child: CircleAvatar(
                radius: 80,
                // TODO: Change to user's network image
                backgroundImage: AssetImage(Assets.userPlaceholder),
              ),
            ),
          ),
          (imageFile) => FlatButton(
            onPressed: () async => _pickImage(context),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: FileImage(imageFile),
            ),
          ),
        );
  }

  Future _pickImage(BuildContext context) async {
    final _imagePicked = await ImagePicker().getImage(source: ImageSource.gallery);
    final _imageFile = File(_imagePicked.path);
    context.bloc<ProfileEditingFormBloc>().add(ProfileEditingFormEvent.imageChanged(_imageFile));
  }
}
