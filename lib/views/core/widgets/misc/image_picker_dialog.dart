import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ImagePickerDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: WorldOnColors.background,
      actions: [
        ElevatedButton(
          onPressed: () async {
            final _imageFile = await _pickImage(
              ImageSource.camera,
              context,
            );
            Navigator.of(context).pop(_imageFile);
          },
          child: Row(
            children: [
              const Icon(Icons.photo_camera),
              const SizedBox(width: 3),
              Text(
                S.of(context).camera,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            final _imageFile = await _pickImage(
              ImageSource.gallery,
              context,
            );
            Navigator.of(context).pop(_imageFile);
          },
          child: Row(
            children: [
              const Icon(Icons.grid_view),
              const SizedBox(width: 3),
              Text(
                S.of(context).gallery,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<File?> _pickImage(ImageSource source, BuildContext context) async {
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
