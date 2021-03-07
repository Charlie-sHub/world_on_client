import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/profile/widgets/foreign_profile/foreign_profile_header.dart';
import 'package:worldon/views/profile/widgets/profile_achievements_tab_view.dart';
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
      // Maybe this shouldn't be hardcoded
      // But how to get the value from the length of ProfileTabBar lists of tabs?
      length: 3,
      child: Column(
        children: <Widget>[
          // TODO: Rework into Sliver classes
          // So the Header and TabBar hide when scrolling down the lists
          // Same for the OwnProfile
          ForeignProfileHeader(user: user),
          const ForeignProfileTabBar(),
          Expanded(
            child: TabBarView(
              children: [
                ProfileExperiencesTabView(user: user),
                ProfileUsersTabView(user: user),
                ProfileAchievementsTabView(user: user),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
