import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/views/authentication/widgets/registration_form/camera_button.dart';
import 'package:worldon/views/core/misc/functions/open_picture_select_dialog.dart';

class UserImagePicker extends StatelessWidget {
  const UserImagePicker({
    Key? key,
    required this.imageURLOption,
  }) : super(key: key);

  final Option<String> imageURLOption;
  static const double _avatarRadius = 80;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: context.read<RegistrationFormBloc>().state.user.imageFileOption.fold(
            () => imageURLOption.fold(
              () => CameraButton(),
              (_imageURL) {
                if (_imageURL.isNotEmpty) {
                  return TextButton(
                    onPressed: () => openPictureSelectDialog(context).then(
                      (imageFile) {
                        if (imageFile != null) {
                          context.read<RegistrationFormBloc>().add(
                                RegistrationFormEvent.imageChanged(
                                  imageFile,
                                ),
                              );
                        }
                      },
                    ),
                    child: CircleAvatar(
                      radius: _avatarRadius,
                      backgroundImage: CachedNetworkImageProvider(_imageURL),
                    ),
                  );
                } else {
                  return CameraButton();
                }
              },
            ),
            (imageFile) => TextButton(
              onPressed: () => openPictureSelectDialog(context).then(
                (imageFile) {
                  if (imageFile != null) {
                    context.read<RegistrationFormBloc>().add(
                          RegistrationFormEvent.imageChanged(
                            imageFile,
                          ),
                        );
                  }
                },
              ),
              child: CircleAvatar(
                radius: _avatarRadius,
                backgroundImage: FileImage(imageFile!),
              ),
            ),
          ),
    );
  }
}
