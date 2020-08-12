import 'package:flutter/material.dart';

class WorldOnLogoImage extends StatelessWidget {
  const WorldOnLogoImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/world_on_logo.jpg'),
      height: 180,
      width: 180,
    );
  }
}
