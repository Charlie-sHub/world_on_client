import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/profile/widgets/profile/profile_header.dart';
import 'package:worldon/views/profile/widgets/profile/profile_log_tab_view.dart';
import 'package:worldon/views/profile/widgets/profile/profile_tab_bar.dart';
import 'package:worldon/views/profile/widgets/profile_experiences_tab_view/profile_experiences_tab_view.dart';
import 'package:worldon/views/profile/widgets/profile_users_tab_view/profile_users_tab_view.dart';

class Profile extends StatelessWidget {
  final GlobalKey<State<StatefulWidget>> userLevelShowKey;
  final bool isOwn;
  final User user;

  const Profile({
    Key? key,
    required this.isOwn,
    required this.user,
    required this.userLevelShowKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabs = [
      ProfileExperiencesTabView(
        user: user,
        isOwnProfile: isOwn,
      ),
      ProfileUsersTabView(user: user),
      if (isOwn) ProfileLogTabView(),
    ];
    return DefaultTabController(
      length: tabs.length,
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
              userLevelShowKey: userLevelShowKey,
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
          children: tabs,
        ),
      ),
    );
  }
}
