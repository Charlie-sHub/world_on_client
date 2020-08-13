import 'package:flutter/material.dart';

class WorldOnLogo extends StatelessWidget {
  const WorldOnLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/world_on_logo.jpg'),
      height: 300,
      width: 300,
    );
  }
}
