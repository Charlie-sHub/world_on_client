import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/experience_navigation/widget/experience_finish/rate_difficulty_widget.dart';
import 'package:worldon/views/experience_navigation/widget/experience_finish/world_on_star.dart';

import '../rewards_list_view.dart';
import 'experience_gained_text.dart';
import 'finish_button.dart';
import 'like_dislike_button_builder.dart';

class FinishSuccessView extends StatelessWidget {
  final Experience experience;

  const FinishSuccessView({Key key, @required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WorldOnColors.white,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: AutoSizeText(
                experience.title.getOrCrash(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: WorldOnColors.background,
                  fontSize: 28,
                ),
              ),
            ),
          ),
          // TODO: Check that all the AutoSizeText have bounds
          // https://pub.dev/packages/auto_size_text#troubleshooting
          const Text(
            "Experience Finished!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: WorldOnColors.background,
              fontSize: 25,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              // TODO: Figure out way to calculate how well the User did the Experience
              // ANd show the appropriate amount of stars
              WorldOnStar(),
              WorldOnStar(),
              WorldOnStar(),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Rewards:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: WorldOnColors.background,
              ),
            ),
          ),
          RewardsListView(experience: experience),
          ExperiencedGainedText(experience: experience),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text(
                "Did you like it?",
                style: TextStyle(color: WorldOnColors.background),
              ),
              Row(
                children: <Widget>[
                  LikeDislikeButtonBuilder(experience: experience),
                  Text(
                    experience.likedBy.length.toString(),
                    style: const TextStyle(color: WorldOnColors.background),
                  ),
                ],
              ),
            ],
          ),
          RateDifficultyWidget(experience: experience),
          const Padding(
            padding: EdgeInsets.all(5),
            child: FinishButton(),
          ),
        ],
      ),
    );
  }
}
