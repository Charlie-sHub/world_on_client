import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/functions/world_on_number_display.dart';

class ExperienceToDoCounter extends StatelessWidget {
  const ExperienceToDoCounter({
    Key? key,
    required this.amount,
  }) : super(key: key);

  final int amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          MdiIcons.bookmark,
          color: Colors.green,
        ),
        const SizedBox(width: 5),
        AutoSizeText(
          S.of(context).toDoBy,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(width: 5),
        AutoSizeText(
          createNumberDisplay(amount),
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
