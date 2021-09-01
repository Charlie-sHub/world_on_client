import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widgets/misc/user_avatar_follow_checker.dart';

class CircularAvatarUserCard extends StatelessWidget {
  const CircularAvatarUserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;
  static const double _avatarRadius = 35;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserAvatarFollowChecker(
          user: user.simplified,
          checkIconSize: 20,
          avatarRadius: _avatarRadius,
        ),
        Flexible(
          child: Column(
            children: <Widget>[
              FittedBox(
                child: AutoSizeText(
                  user.name.getOrCrash(),
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
              FittedBox(
                child: AutoSizeText(
                  "@${user.username.getOrCrash()}",
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 7,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
