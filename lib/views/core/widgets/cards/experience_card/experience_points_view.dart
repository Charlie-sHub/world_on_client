import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperiencePointsView extends StatelessWidget {
  const ExperiencePointsView({
    Key? key,
    required this.difficulty,
  }) : super(key: key);

  final int difficulty;

  @override
  Widget build(BuildContext context) {
    final _experienceToGain = difficulty * ExperiencePoints.multiplier;
    return Row(
      children: <Widget>[
        const Icon(
          Icons.self_improvement_rounded,
          color: WorldOnColors.primary,
        ),
        const SizedBox(width: 5),
        AutoSizeText(
          _experienceToGain.toString(),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const AutoSizeText(
          " XP",
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
