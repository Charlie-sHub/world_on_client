import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

import '../../../core/misc/common_functions/open_picture_select_dialog.dart';

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
          onPressed: () async {
            final _imageFile = await openPictureSelectDialog(context);
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
    );
  }
}
