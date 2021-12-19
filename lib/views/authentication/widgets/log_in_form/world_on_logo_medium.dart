import 'package:flutter/material.dart';
import 'package:worldon/core/assets.dart';

class WorldOnLogoMedium extends StatelessWidget {
  const WorldOnLogoMedium({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => const Image(
        image: AssetImage(Assets.worldOnLogo),
        height: 180,
        width: 180,
      );
}
