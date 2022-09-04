import 'dart:io';

import 'package:flutter/material.dart';
import 'package:worldon/views/core/widgets/misc/image_picker_dialog.dart';

Future<File?> openPictureSelectDialog(BuildContext context) async =>
    showDialog<File>(
      context: context,
      builder: (context) => ImagePickerDialog(),
    );
