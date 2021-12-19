import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/functions/get_color_by_difficulty.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class DifficultyDisplay extends StatelessWidget {
  const DifficultyDisplay({
    Key? key,
    required this.difficulty,
  }) : super(key: key);

  final int difficulty;

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          const Icon(
            Icons.whatshot_rounded,
            color: WorldOnColors.red,
          ),
          const SizedBox(width: 5),
          AutoSizeText(
            "${S.of(context).difficulty}: ",
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          const SizedBox(width: 5),
          AutoSizeText(
            difficulty.toString(),
            style: TextStyle(
              color: getColorByDifficulty(difficulty),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
}
