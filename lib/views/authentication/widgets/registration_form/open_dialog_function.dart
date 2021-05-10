import 'dart:io';

import 'package:flutter/material.dart';
import 'package:worldon/views/core/widgets/misc/image_picker_dialog.dart';

Future<File?> openDialog(BuildContext context) async {
  return showDialog<File>(
    context: context,
    useSafeArea: true,
    barrierDismissible: true,
    builder: (context) => ImagePickerDialog(),
  );
}
