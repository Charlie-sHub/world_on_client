import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widgets/cards/user_card/name_username_display.dart';
import 'package:worldon/views/core/widgets/misc/follow_unfollow_button_builder/follow_unfollow_button_builder.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    Key? key,
    required this.creator,
  }) : super(key: key);

  final User creator;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            UserImage(
              user: creator,
              avatarRadius: 30,
            ),
            const SizedBox(width: 5),
            NameUsernameDisplay(user: creator),
          ],
        ),
        FollowUnfollowButtonBuilder(user: creator),
      ],
    );
  }
}
