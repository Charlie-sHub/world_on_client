import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/profile/widgets/own_profile/own_profile_header.dart';
import 'package:worldon/views/profile/widgets/own_profile/profile_log_tab_view.dart';
import 'package:worldon/views/profile/widgets/profile_experiences_tab_view/profile_experiences_tab_view.dart';
import 'package:worldon/views/profile/widgets/profile_users_tab_view/profile_users_tab_view.dart';

import 'own_profile_tab_bar.dart';

class OwnProfile extends StatelessWidget {
  final User user;

  const OwnProfile({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        dragStartBehavior: DragStartBehavior.down,
        clipBehavior: Clip.antiAlias,
        // TODO: Make the header float
        // floating means that the sliver grows back right when the user scrolls back up
        // No matter how far down the list he was
        // For some reason SliverPersistentHeader doesn't want to float
        // Which is rather annoying as to see the header again the user must scroll all the way back up
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverPersistentHeader(
            floating: true,
            delegate: OwnProfileHeader(
              user: user,
              minExtent: 160,
              maxExtent: 170,
            ),
          ),
          const SliverPersistentHeader(
            pinned: true,
            delegate: OwnProfileTabBar(
              minExtent: 50,
              maxExtent: 50,
            ),
          ),
        ],
        body: TabBarView(
          children: [
            ProfileExperiencesTabView(user: user),
            ProfileUsersTabView(user: user),
            // ProfileAchievementsTabView(user: user),
            ProfileLogTabView(),
          ],
        ),
      ),
    );
  }
}
