import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/follow_unfollow_button_builder/follow_unfollow_button_builder.dart';
import 'package:worldon/views/core/widgets/misc/followers_following_counters.dart';
import 'package:worldon/views/profile/widgets/profile/profile_avatar_stack.dart';

import 'edit_profile_button.dart';

class ProfileHeader extends SliverPersistentHeaderDelegate {
  const ProfileHeader({
    required this.user,
    required this.isOwn,
    required this.maxExtent,
    required this.minExtent,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: FollowersFollowingCounters(user: user),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ProfileAvatarStack(user: user),
                          const SizedBox(height: 10),
                          FittedBox(
                            child: Row(
                              children: [
                                if (user.adminPowers)
                                  const Icon(
                                    Icons.verified_rounded,
                                    color: WorldOnColors.blue,
                                  ),
                                AutoSizeText(
                                  user.name.getOrCrash(),
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AutoSizeText(
                            "@${user.username.getOrCrash()}",
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: isOwn ? EditProfileButton(user: user) : FollowUnfollowButtonBuilder(user: user),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Flexible(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: AutoSizeText(
                user.description.getOrCrash(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14),
                minFontSize: 8,
                maxFontSize: 14,
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
