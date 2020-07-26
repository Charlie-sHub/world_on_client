import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/simple_tag_display.dart';

class AchievementCard extends StatelessWidget {
  final Achievement achievement;

  const AchievementCard({Key key, @required this.achievement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      AutoSizeText(
                        achievement.name.getOrCrash(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: WorldOnColors.background,
                        ),
                      ),
                      const SizedBox(height: 5),
                      AutoSizeText(
                        achievement.description.getOrCrash(),
                        style: TextStyle(
                          color: WorldOnColors.background,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  // Just a placeholder, the icon shown should be the image/icon representing the Achievement
                  child: Icon(
                    Icons.star_border,
                    color: WorldOnColors.primary,
                    size: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Wrap(
              spacing: 5,
              children: <Widget>[
                ...achievement.tags.getOrCrash().asSet().map(
                      (tag) => SimpleTagDisplay(tag: tag),
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
