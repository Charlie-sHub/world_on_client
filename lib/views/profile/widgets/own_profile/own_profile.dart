import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/profile/widgets/own_profile/own_profile_header.dart';
import 'package:worldon/views/profile/widgets/own_profile/profile_log_tab_view.dart';
import 'package:worldon/views/profile/widgets/profile_achievements_tab_view.dart';
import 'package:worldon/views/profile/widgets/profile_experiences_tab_view/profile_experiences_tab_view.dart';
import 'package:worldon/views/profile/widgets/profile_users_tab_view/profile_users_tab_view.dart';

import 'own_profile_tab_bar.dart';

class OwnProfile extends StatelessWidget {
  final User user;

  const OwnProfile({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: <Widget>[
          OwnProfileHeader(user: user),
          const OwnProfileTabBar(),
          Expanded(
            child: TabBarView(
              children: [
                ProfileExperiencesTabView(user: user),
                ProfileUsersTabView(user: user),
                ProfileAchievementsTabView(user: user),
                ProfileLogTabView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
