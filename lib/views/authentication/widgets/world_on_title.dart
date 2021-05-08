import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class WorldOnTitle extends StatelessWidget {
  const WorldOnTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "World On",
      style: TextStyle(
        fontSize: 100,
        color: WorldOnColors.primary,
        fontFamily: "MovingSkate",
        shadows: [
          Shadow(
            offset: const Offset(
              2,
              2,
            ),
            blurRadius: 5,
            color: WorldOnColors.accent.withOpacity(0.75),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
