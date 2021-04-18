import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widgets/cards/user_card/name_username_display.dart';
import 'package:worldon/views/core/widgets/cards/user_card/user_bio.dart';
import 'package:worldon/views/core/widgets/misc/follow_unfollow_button_builder/follow_unfollow_button_builder.dart';
import 'package:worldon/views/core/widgets/misc/followers_following_counters.dart';
import 'package:worldon/views/core/widgets/misc/user_experience_info.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                UserImage(user: user),
                NameUsernameDisplay(user: user),
                FollowUnfollowButtonBuilder(user: user),
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
      ),
    );
  }
}
