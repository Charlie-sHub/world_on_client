import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class DeletionConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: WorldOnColors.background,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(
              S.of(context).delete,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(
              S.of(context).cancel,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
