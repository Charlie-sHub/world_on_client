import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/follow_unfollow_button_builder/follow_unfollow_button_builder.dart';
import 'package:worldon/views/core/widgets/misc/followers_following_counters.dart';
import 'package:worldon/views/profile/widgets/profile/edit_profile_button.dart';
import 'package:worldon/views/profile/widgets/profile/profile_avatar_stack.dart';

class ProfileHeader extends SliverPersistentHeaderDelegate {
  final GlobalKey<State<StatefulWidget>> userLevelShowKey;

  const ProfileHeader({
    required this.user,
    required this.isOwn,
    required this.maxExtent,
    required this.minExtent,
    required this.userLevelShowKey,
  });

  final User user;
  final bool isOwn;
  @override
  final double maxExtent;
  @override
  final double minExtent;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: [
            ProfileAvatarStack(
              user: user,
              showKey: userLevelShowKey,
            ),
            FittedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      if (user.adminPowers)
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.verified_rounded,
                            color: WorldOnColors.blue,
                            size: 17,
                          ),
                        ),
                      AutoSizeText(
                        user.name.getOrCrash(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  AutoSizeText(
                    "@${user.username.getOrCrash()}",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            FollowersFollowingCounters(user: user),
          ],
        ),
        Flexible(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: AutoSizeText(
                user.description.getOrCrash(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                ),
                minFontSize: 8,
                maxFontSize: 12,
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        if (isOwn)
          EditProfileButton(
            user: user,
          )
        else
          FollowUnfollowButtonBuilder(
            userId: user.id,
          ),
        const SizedBox(height: 5),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
