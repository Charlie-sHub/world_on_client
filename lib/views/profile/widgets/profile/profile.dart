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
    final _tabList = [
      ProfileExperiencesTabView(user: user),
      ProfileUsersTabView(user: user),
      // ProfileAchievementsTabView(user: user),
      if (isOwn) ProfileLogTabView(),
    ];
    return DefaultTabController(
      length: _tabList.length,
      child: NestedScrollView(
        dragStartBehavior: DragStartBehavior.down,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverPersistentHeader(
            delegate: ProfileHeader(
              user: user,
              minExtent: MediaQuery.of(context).size.height * 0.3,
              maxExtent: MediaQuery.of(context).size.height * 0.3,
              isOwn: isOwn,
            ),
          ),
          SliverPersistentHeader(
            delegate: ProfileTabBar(
              minExtent: 46,
              maxExtent: 46,
              isOwn: isOwn,
            ),
          ),
        ],
        body: TabBarView(
          children: _tabList,
        ),
      ),
    );
  }
}
