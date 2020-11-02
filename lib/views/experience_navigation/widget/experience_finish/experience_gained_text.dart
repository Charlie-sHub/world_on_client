import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperiencedGainedText extends StatelessWidget {
  const ExperiencedGainedText({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: AutoSizeText.rich(
          TextSpan(
            text: "You've gained: ",
            children: <TextSpan>[
              TextSpan(
                text: "${experience.difficulty.getOrCrash() * 1000}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: WorldOnColors.primary,
                  shadows: [
                    Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 3,
                    )
                  ],
                ),
              ),
              const TextSpan(text: " experience points!"),
            ],
          ),
          style: const TextStyle(
            color: WorldOnColors.background,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
