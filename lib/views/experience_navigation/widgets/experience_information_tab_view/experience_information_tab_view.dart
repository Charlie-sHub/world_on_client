import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/common_functions/get_color_by_difficulty.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/tag_card/simple_tag_card_builder.dart';
import 'package:worldon/views/core/widgets/cards/user_card/name_username_display.dart';
import 'package:worldon/views/core/widgets/misc/block_unblock_button_builder/block_unblock_button_builder.dart';
import 'package:worldon/views/core/widgets/misc/experience_done_counter.dart';
import 'package:worldon/views/core/widgets/misc/experience_likes_counter.dart';
import 'package:worldon/views/core/widgets/misc/follow_unfollow_button_builder/follow_unfollow_button_builder.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_information_tab_view/experience_description.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_information_tab_view/experience_header.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_information_tab_view/experience_image_gallery.dart';

import 'experience_comments_list_view.dart';

class ExperienceInformationTabView extends StatelessWidget {
  const ExperienceInformationTabView({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExperienceHeader(experience: experience),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: ExperienceDescription(experience: experience),
        ),
        const SizedBox(height: 5),
        ExperienceImageGallery(
          imageURLs: experience.imageURLs,
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "${S.of(context).difficulty}: ",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
                experience.getFormattedCreationDateString,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 2,
            runSpacing: 3,
            children: <Widget>[
              ...experience.tags.getOrCrash().asSet().map(
                    (tag) => SimpleTagCardBuilder(tag: tag),
                  ),
            ],
          ),
        ),
        /*
        if (experience.rewards.isNotEmpty)
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  S.of(context).experienceInformationRewards,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
            ],
          ),
          */
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                UserImage(
                  user: experience.creator,
                  avatarRadius: 30,
                ),
                NameUsernameDisplay(user: experience.creator),
              ],
            ),
            Row(
              children: [
                FollowUnfollowButtonBuilder(user: experience.creator),
                const SizedBox(width: 10),
                BlockUnblockButtonBuilder(user: experience.creator),
                const SizedBox(width: 10),
              ],
            ),
          ],
        ),
        const Divider(
          height: 1,
          color: WorldOnColors.accent,
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ExperienceLikesCounter(experience: experience),
              ExperienceDoneCounter(amount: experience.doneBy.length),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            "${experience.comments.length} ${S.of(context).experienceInformationCommentsNumber}",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ExperienceCommentsListView(experience: experience),
      ],
    );
  }
}
