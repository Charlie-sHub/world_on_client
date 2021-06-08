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
    required this.isOwn,
    required this.user,
  }) : super(key: key);

  final bool isOwn;
  final User user;

  @override
  Widget build(BuildContext context) {
    final _tabs = [
      ProfileExperiencesTabView(
        user: user,
        isOwnProfile: isOwn,
      ),
      ProfileUsersTabView(user: user),
      if (isOwn) ProfileLogTabView(),
    ];
    return DefaultTabController(
      length: _tabs.length,
      child: NestedScrollView(
        key: UniqueKey(),
        dragStartBehavior: DragStartBehavior.down,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverPersistentHeader(
            delegate: ProfileHeader(
              user: user,
              minExtent: MediaQuery.of(context).size.height * 0.32,
              maxExtent: MediaQuery.of(context).size.height * 0.32,
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
          children: _tabs,
        ),
      ),
    );
  }
}
