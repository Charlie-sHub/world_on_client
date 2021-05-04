import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    bottom: 10,
                    left: 5,
                  ),
                  child: ProfileAvatarStack(user: user),
                ),
                Column(
                  children: <Widget>[
                    Row(
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
                    AutoSizeText(
                      "@${user.username.getOrCrash()}",
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Showing coins would be annoying to update
            // So they will be hidden for now
            /*
            if (isOwn)
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Icon(
                      Icons.attach_money,
                      color: WorldOnColors.red,
                    ),
                    AutoSizeText(
                      user.coins.toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        color: WorldOnColors.red,
                      ),
                    ),
                  ],
                ),
              ),
             */
            if (isOwn)
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: EditProfileButton(user: user),
              )
          ],
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: AutoSizeText(
              user.description.getOrCrash() +
                  "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15),
              minFontSize: 8,
              maxFontSize: 15,
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        FollowersFollowingCounters(user: user),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
