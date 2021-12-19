import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/functions/world_on_number_display.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperienceDoneCounter extends StatelessWidget {
  const ExperienceDoneCounter({
    Key? key,
    required this.amount,
  }) : super(key: key);

  final int amount;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          const Icon(
            Icons.people_alt_rounded,
            color: WorldOnColors.blue,
          ),
          const SizedBox(width: 5),
          AutoSizeText(
            S.of(context).doneBy,
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
