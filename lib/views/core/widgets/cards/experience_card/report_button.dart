import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ReportButton extends StatelessWidget {
  const ReportButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.error_outline,
        size: 30,
        color: WorldOnColors.background,
      ),
      onPressed: () => FlushbarHelper.createInformation(
        duration: const Duration(seconds: 2),
        message: S.of(context).placeholder,
      ).show(context),
    );
  }
}
