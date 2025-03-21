import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/functions/open_picture_select_dialog.dart';

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
            onPressed: () => imageChanged(context),
            child: Hero(
              tag: "userImage",
              child: CircleAvatar(
                radius: 40,
                backgroundImage: CachedNetworkImageProvider(user.imageURL),
              ),
            ),
          ),
          (imageFile) => TextButton(
            onPressed: () => imageChanged(context),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: FileImage(imageFile!),
            ),
          ),
        );
  }

  Future<void> imageChanged(BuildContext context) => openPictureSelectDialog(context).then(
        (imageFile) {
          if (imageFile != null) {
            context.read<ProfileEditingFormBloc>().add(
                  ProfileEditingFormEvent.imageChanged(
                    imageFile,
                  ),
                );
          }
        },
      );
}
