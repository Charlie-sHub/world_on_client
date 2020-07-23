import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class AchievementErrorCard extends StatelessWidget {
  final Achievement achievement;

  const AchievementErrorCard({Key key, @required this.achievement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(),
      color: WorldOnColors.red,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            const Text(
              "Invalid Achievement",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: WorldOnColors.white,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Details:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: WorldOnColors.white,
              ),
            ),
            const SizedBox(height: 5),
            AutoSizeText(
              achievement.failureOption.fold(
                () => "",
                (failure) => failure.toString(),
              ),
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 12,
                color: WorldOnColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
