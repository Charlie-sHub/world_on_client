import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/common_functions/get_color_by_difficulty.dart';

class DifficultyDisplay extends StatelessWidget {
  const DifficultyDisplay({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          "${S.of(context).difficulty}: ",
        ),
        const SizedBox(width: 5),
        Text(
          experience.difficulty.getOrCrash().toString(),
          style: TextStyle(
            color: getColorByDifficulty(experience.difficulty.getOrCrash()),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
