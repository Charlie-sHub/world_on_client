import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/views/core/widgets/cards/user_card/name_username_display.dart';
import 'package:worldon/views/core/widgets/misc/follow_unfollow_button_builder/follow_unfollow_button_builder.dart';
import 'package:worldon/views/core/widgets/misc/user_avatar_follow_checker.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    Key? key,
    required this.creator,
  }) : super(key: key);

  final SimpleUser creator;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              UserAvatarFollowChecker(
                user: creator,
                checkIconSize: 20,
                avatarRadius: 30,
              ),
              const SizedBox(width: 5),
              NameUsernameDisplay(
                name: creator.name,
                username: creator.username,
              ),
            ],
          ),
          FollowUnfollowButtonBuilder(userId: creator.id),
        ],
      );
}
