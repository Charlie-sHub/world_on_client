import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/profile/widgets/foreign_profile/foreign_profile_header.dart';
import 'package:worldon/views/profile/widgets/profile_experiences_tab_view/profile_experiences_tab_view.dart';
import 'package:worldon/views/profile/widgets/profile_users_tab_view/profile_users_tab_view.dart';

import 'foreign_profile_tab_bar.dart';

class ForeignProfile extends StatelessWidget {
  final User user;
  
  const ForeignProfile({
    Key key,
    @required this.user,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        dragStartBehavior: DragStartBehavior.down,
        clipBehavior: Clip.antiAlias,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverPersistentHeader(
            floating: true,
            delegate: ForeignProfileHeader(
              user: user,
              minExtent: 160,
              maxExtent: 170,
            ),
          ),
          const SliverPersistentHeader(
            pinned: true,
            delegate: ForeignProfileTabBar(
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
          ],
        ),
      ),
    );
  }
}
