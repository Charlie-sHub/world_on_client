import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/misc/block_unblock_button_builder/block_unblock_button_builder.dart';
import 'package:worldon/views/core/widget/misc/follow_unfollow_button_builder/follow_unfollow_button_builder.dart';
import 'package:worldon/views/core/widget/misc/user_experience_info.dart';

class ForeignProfileHeader extends StatelessWidget {
  const ForeignProfileHeader({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WorldOnColors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(5),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AutoSizeText(
                        user.name.getOrCrash(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: WorldOnColors.background,
                        ),
                      ),
                      AutoSizeText(
                        user.username.getOrCrash(),
                        style: const TextStyle(
                          fontSize: 18,
                          color: WorldOnColors.background,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FollowUnfollowButtonBuilder(user: user),
              BlockUnblockButtonBuilder(user: user),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: AutoSizeText(
              user.description.getOrCrash(),
              textAlign: TextAlign.justify,
              style: const TextStyle(
                color: WorldOnColors.background,
              ),
            ),
          ),
          UserExperienceInfo(user: user),
        ],
      ),
    );
  }
}
