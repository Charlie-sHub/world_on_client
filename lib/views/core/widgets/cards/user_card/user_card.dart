import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widgets/cards/user_card/name_username_display.dart';
import 'package:worldon/views/core/widgets/cards/user_card/user_bio.dart';
import 'package:worldon/views/core/widgets/misc/follow_unfollow_button_builder/follow_unfollow_button_builder.dart';
import 'package:worldon/views/core/widgets/misc/followers_following_counters.dart';
import 'package:worldon/views/core/widgets/misc/user_avatar_follow_checker.dart';
import 'package:worldon/views/core/widgets/misc/user_experience_info.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        margin: const EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                UserAvatarFollowChecker(
                  user: user.simplified,
                  checkIconSize: 20,
                  avatarRadius: 30,
                ),
                NameUsernameDisplay(
                  name: user.name,
                  username: user.username,
                ),
                FollowUnfollowButtonBuilder(userId: user.id),
                // BlockUnblockButtonBuilder(user: user),
                const SizedBox(width: 7),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: UserBio(user: user),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: FollowersFollowingCounters(user: user),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: UserExperienceInfo(user: user),
            ),
          ],
        ),
      );
}
