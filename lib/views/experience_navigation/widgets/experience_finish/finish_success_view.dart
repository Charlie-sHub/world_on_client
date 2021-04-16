import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_finish/experience_gained_text.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_finish/finish_button.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_finish/like_dislike_button_builder.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_finish/rate_difficulty_widget.dart';
import 'package:worldon/views/experience_navigation/widgets/rewards_list_view.dart';

class FinishSuccessView extends StatelessWidget {
  final Experience experience;

  const FinishSuccessView({
    Key key,
    @required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WorldOnColors.white,
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 5),
          Center(
            child: AutoSizeText(
              experience.title.getOrCrash(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: WorldOnColors.background,
                fontSize: 25,
              ),
            ),
          ),
          // TODO: Check that all the AutoSizeText have bounds
          // https://pub.dev/packages/auto_size_text#troubleshooting
          Text(
            S.of(context).experienceFinishSuccessTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: WorldOnColors.background,
              fontSize: 20,
            ),
          ),
          /*
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              WorldOnStar(),
              WorldOnStar(),
              WorldOnStar(),
            ],
          ),
           */
          const SizedBox(height: 10),
          if (experience.rewards.isNotEmpty)
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    "${S.of(context).rewardsGained}: ",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: WorldOnColors.background,
                    ),
                  ),
                ),
                RewardsListView(experience: experience),
              ],
            ),
          ExperiencedGainedText(experience: experience),
          RateDifficultyWidget(experience: experience),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                S.of(context).likeQuestion,
                style: const TextStyle(
                  color: WorldOnColors.background,
                  fontSize: 20,
                ),
              ),
              LikeDislikeButtonBuilder(experience: experience),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(5),
            child: FinishButton(),
          ),
        ],
      ),
    );
  }
}
