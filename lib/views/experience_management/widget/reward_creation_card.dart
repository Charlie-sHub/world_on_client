import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class RewardCreationCard extends StatelessWidget {
  const RewardCreationCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const <Widget>[
          Text(
            "Rewards",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: WorldOnColors.background,
              fontSize: 15,
            ),
          ),
          // TODO: implement rewards creation
        ],
      ),
    );
  }
}
