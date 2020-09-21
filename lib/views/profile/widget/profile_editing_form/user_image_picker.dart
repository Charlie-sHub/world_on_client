import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

class UserImagePicker extends StatelessWidget {
  final User user;

  const UserImagePicker({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.bloc<ProfileEditingFormBloc>().state.user.imageFileOption.fold(
          () => FlatButton(
            onPressed: () async => _pickImage(context),
            child: user.imageURL.contains("assets/")
                ? Hero(
                    tag: "userImageAsset",
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(user.imageURL),
                    ),
                  )
                : Hero(
                    tag: "userImageFile",
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: FileImage(File(user.imageURL)),
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
