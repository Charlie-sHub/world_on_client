import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class WorldOnTitle extends StatelessWidget {
  const WorldOnTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "World On",
      style: TextStyle(
        fontSize: 100,
        color: WorldOnColors.primary,
        fontFamily: "MovingSkate",
      ),
      textAlign: TextAlign.center,
    );
  }
}
