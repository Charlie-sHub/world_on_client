import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class RewardCard extends StatelessWidget {
  final Reward reward;

  const RewardCard({Key key, @required this.reward}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AutoSizeText(
                  reward.name.getOrCrash(),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: WorldOnColors.background,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: AutoSizeText(
                    reward.description.getOrCrash(),
                    style: const TextStyle(
                      fontSize: 12,
                      color: WorldOnColors.background,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Image(
              image: AssetImage('assets/reward_placeholder.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
