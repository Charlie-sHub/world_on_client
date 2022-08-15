import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ImagePickerDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) => AlertDialog(
        backgroundColor: WorldOnColors.background,
        actions: [
          ElevatedButton(
            onPressed: () => _pickImage(
              context,
              ImageSource.camera,
            ),
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
            onPressed: () => _pickImage(
              context,
              ImageSource.gallery,
            ),
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

  Future<void> _pickImage(BuildContext context, ImageSource source) =>
      ImagePicker()
          .pickImage(
        source: source,
        imageQuality: 30,
        maxHeight: 1440,
        maxWidth: 2560,
      )
          .then(
        (imagePicked) {
          if (imagePicked != null) {
            final imageFile = File(imagePicked.path);
            Navigator.of(context).pop(imageFile);
          }
        },
      );
}
