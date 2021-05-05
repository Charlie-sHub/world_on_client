import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/profile/widgets/profile/profile_header.dart';
import 'package:worldon/views/profile/widgets/profile/profile_log_tab_view.dart';
import 'package:worldon/views/profile/widgets/profile_experiences_tab_view/profile_experiences_tab_view.dart';
import 'package:worldon/views/profile/widgets/profile_users_tab_view/profile_users_tab_view.dart';

import 'profile_tab_bar.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.user,
    required this.isOwn,
  }) : super(key: key);

  final User user;
  final bool isOwn;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: isOwn ? 3 : 2,
      child: NestedScrollView(
        dragStartBehavior: DragStartBehavior.down,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverPersistentHeader(
              delegate: ProfileHeader(
                user: user,
                minExtent: MediaQuery.of(context).size.height * 0.3,
                maxExtent: MediaQuery.of(context).size.height * 0.3,
                isOwn: isOwn,
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: ProfileTabBar(
              minExtent: 46,
              maxExtent: 46,
              isOwn: isOwn,
            ),
          ),
        ],
        // TODO: Fix the issue with the body scrolling too much
        // Even if there's nothing to scroll down to (like a list with only one experience)
        // The NestedScrollView allows scrolling down into the void to hide the Headers
        // It just looks off
        body: CustomScrollView(
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            SliverToBoxAdapter(
              child: TabBarView(
                children: [
                  ProfileExperiencesTabView(user: user),
                  ProfileUsersTabView(user: user),
                  // ProfileAchievementsTabView(user: user),
                  if (isOwn) ProfileLogTabView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
