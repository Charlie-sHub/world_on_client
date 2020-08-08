import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class MapTabView extends StatelessWidget {
  final Experience experience;

  const MapTabView({
    Key key,
    @required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.map,
          size: 180,
          color: WorldOnColors.primary,
        ),
        const Text(
          "Map",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ],
    );
  }
}
