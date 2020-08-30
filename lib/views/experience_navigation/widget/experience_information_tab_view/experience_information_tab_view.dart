import 'package:flutter/material.dart';
import 'package:worldon/core/assets.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/common_functions/get_color_by_difficulty.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/simple_tag_display.dart';
import 'package:worldon/views/core/widget/cards/user_card/name_username_display.dart';
import 'package:worldon/views/core/widget/misc/block_unblock_button_builder/block_unblock_button_builder.dart';
import 'package:worldon/views/core/widget/misc/experience_done_counter.dart';
import 'package:worldon/views/core/widget/misc/experience_likes_counter.dart';
import 'package:worldon/views/core/widget/misc/follow_unfollow_button_builder/follow_unfollow_button_builder.dart';
import 'package:worldon/views/core/widget/misc/user_image.dart';
import 'package:worldon/views/experience_navigation/widget/experience_information_tab_view/experience_description.dart';
import 'package:worldon/views/experience_navigation/widget/experience_information_tab_view/experience_header.dart';
import 'package:worldon/views/experience_navigation/widget/rewards_list_view.dart';

import 'experience_comments_list_view.dart';

class ExperienceInformationTabView extends StatelessWidget {
  const ExperienceInformationTabView({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WorldOnColors.white,
      child: ListView(
        children: [
          ExperienceHeader(experience: experience),
          Padding(
            padding: const EdgeInsets.all(5),
            child: ExperienceDescription(experience: experience),
          ),
          // TODO: Implement image gallery
          const Image(
            image: AssetImage(Assets.experiencePlaceholder),
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Difficulty:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: WorldOnColors.background,
                      ),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      experience.difficulty.getOrCrash().toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: getColorByDifficulty(experience.difficulty.getOrCrash()),
                      ),
                    ),
                  ],
                ),
                Text(
                  "${experience.creationDate.getOrCrash().day.toString()}/${experience.creationDate.getOrCrash().month.toString()}/${experience.creationDate.getOrCrash().year.toString()}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: WorldOnColors.background,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 5,
              children: <Widget>[
                ...experience.tags.getOrCrash().asSet().map(
                      (tag) => SimpleTagDisplay(tag: tag),
                    ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Rewards",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: WorldOnColors.background,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: RewardsListView(experience: experience),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5),
                child: UserImage(user: experience.creator),
              ),
              NameUsernameDisplay(user: experience.creator),
              FollowUnfollowButtonBuilder(user: experience.creator),
              BlockUnblockButtonBuilder(user: experience.creator),
            ],
          ),
          const Divider(
            height: 1,
            color: WorldOnColors.background,
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ExperienceLikesCounter(experience: experience),
                ExperienceDoneCounter(experience: experience),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              "${experience.comments.length} comments",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: WorldOnColors.background,
              ),
            ),
          ),
          ExperienceCommentsListView(experience: experience),
        ],
      ),
    );
  }
}
