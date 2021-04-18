import 'package:flutter/material.dart';

class WorldOnTitle extends StatelessWidget {
  const WorldOnTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "WORLD ON",
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
