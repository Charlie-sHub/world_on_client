import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/misc/block_unblock_button_builder.dart';
import 'package:worldon/views/core/widget/misc/follow_unfollow_button_builder.dart';
import 'package:worldon/views/core/widget/misc/user_experience_info.dart';
import 'package:worldon/views/core/widget/misc/user_image.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              UserImage(user: user),
              NameUsernameDisplay(user: user),
              FollowUnfollowButtonBuilder(user: user),
              BlockUnblockButtonBuilder(user: user),
            ],
          ),
          UserBio(user: user),
          UserExperienceInfo(user: user),
        ],
      ),
    );
  }
}

class UserBio extends StatelessWidget {
  const UserBio({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: AutoSizeText(
        user.description.getOrCrash(),
        style: const TextStyle(
          color: WorldOnColors.background,
        ),
      ),
    );
  }
}

class NameUsernameDisplay extends StatelessWidget {
  const NameUsernameDisplay({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AutoSizeText(
              user.name.getOrCrash(),
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: WorldOnColors.background,
              ),
            ),
            AutoSizeText(
              user.username.getOrCrash(),
              style: const TextStyle(
                fontSize: 15,
                color: WorldOnColors.background,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
