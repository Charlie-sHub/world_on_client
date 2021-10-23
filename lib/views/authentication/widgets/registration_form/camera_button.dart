import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/functions/open_picture_select_dialog.dart';

class CameraButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
          iconSize: 80,
          icon: const Icon(
            Icons.photo_camera,
          ),
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
    );
  }
}
