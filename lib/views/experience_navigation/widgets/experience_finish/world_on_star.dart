import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class WorldOnStar extends StatelessWidget {
  const WorldOnStar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => const Icon(
        Icons.star,
        size: 50,
        color: WorldOnColors.primary,
      );
}
