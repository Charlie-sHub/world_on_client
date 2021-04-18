import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widgets/misc/image_picker_dialog.dart';

class UserImagePicker extends StatelessWidget {
  final User user;

  const UserImagePicker({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.read<ProfileEditingFormBloc>().state.user.imageFileOption.fold(
          () => TextButton(
            onPressed: () async {
              final _imageFile = await _openDialog(context);
              if (_imageFile != null) {
                context.read<ProfileEditingFormBloc>().add(
                      ProfileEditingFormEvent.imageChanged(_imageFile),
                    );
              }
            },
            child: Hero(
              tag: "userImage",
              child: CircleAvatar(
                radius: 40,
                backgroundImage: CachedNetworkImageProvider(user.imageURL),
              ),
            ),
          ),
        (imageFile) => TextButton(
            onPressed: () async {
              final _imageFile = await _openDialog(context);
              if (_imageFile != null) {
                context.read<ProfileEditingFormBloc>().add(
                      ProfileEditingFormEvent.imageChanged(_imageFile),
                    );
              }
            },
            child: CircleAvatar(
              radius: 80,
              backgroundImage: FileImage(imageFile!),
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
