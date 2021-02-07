import 'package:flutter/material.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class WorldOnStar extends StatelessWidget {
  const WorldOnStar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconShadowWidget(
      const Icon(
        Icons.star,
        size: 50,
        color: WorldOnColors.primary,
      ),
      shadowColor: Colors.black,
    );
  }
}
