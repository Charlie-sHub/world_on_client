import 'package:flutter/material.dart';
import 'package:worldon/core/assets.dart';

class WorldOnLogoBig extends StatelessWidget {
  const WorldOnLogoBig({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(Assets.worldOnLogo),
      height: 300,
      width: 300,
    );
  }
}
