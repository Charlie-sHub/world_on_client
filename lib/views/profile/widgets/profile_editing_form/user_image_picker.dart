import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

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
        onPressed: () async => _openDialog(context),
            child: Hero(
              tag: "userImage",
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(user.imageURL),
              ),
            ),
          ),
          (imageFile) => FlatButton(
            onPressed: () async => _openDialog(context),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: FileImage(imageFile),
            ),
          ),
        );
  }

  Future _openDialog(BuildContext context) async {
    await showDialog<bool>(
      context: context,
      useSafeArea: true,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
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
      context.bloc<ProfileEditingFormBloc>().add(
            ProfileEditingFormEvent.imageChanged(_imageFile),
          );
    }
  }
}
