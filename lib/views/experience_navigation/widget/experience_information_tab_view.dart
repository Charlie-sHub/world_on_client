import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/common_functions/get_color_by_difficulty.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/simple_tag_display.dart';
import 'package:worldon/views/core/widget/cards/user_card.dart';
import 'package:worldon/views/core/widget/misc/block_unblock_button_builder.dart';
import 'package:worldon/views/core/widget/misc/experience_done_counter.dart';
import 'package:worldon/views/core/widget/misc/experience_likes_counter.dart';
import 'package:worldon/views/core/widget/misc/follow_unfollow_button_builder.dart';
import 'package:worldon/views/core/widget/misc/user_image.dart';

import 'comment_card.dart';
import 'comment_error_card.dart';
import 'rewards_list_view.dart';

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
          ExperienceDescription(experience: experience),
          // TODO: Implement image gallery
          const Image(
            image: AssetImage('assets/experience_placeholder_image.jpg'),
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
              UserImage(user: experience.creator),
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

class ExperienceCommentsListView extends StatelessWidget {
  const ExperienceCommentsListView({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      color: WorldOnColors.background,
      child: ListView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: experience.comments.length,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          final _comment = experience.comments.elementAt(index);
          if (_comment.isValid) {
            return CommentCard(comment: _comment);
          } else {
            return CommentErrorCard(comment: _comment);
          }
        },
      ),
    );
  }
}

class ExperienceDescription extends StatelessWidget {
  const ExperienceDescription({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: AutoSizeText(
        experience.description.getOrCrash(),
        textAlign: TextAlign.justify,
        style: const TextStyle(
          fontSize: 15,
          color: WorldOnColors.background,
        ),
      ),
    );
  }
}

class ExperienceHeader extends StatelessWidget {
  const ExperienceHeader({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WorldOnColors.primary,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: AutoSizeText(
          experience.title.getOrCrash(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: WorldOnColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
