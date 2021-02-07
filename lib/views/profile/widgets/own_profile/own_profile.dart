import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/profile/widgets/own_profile/own_profile_header.dart';
import 'package:worldon/views/profile/widgets/profile_achievements_tab_view.dart';
import 'package:worldon/views/profile/widgets/profile_experiences_tab_view/profile_experiences_tab_view.dart';
import 'package:worldon/views/profile/widgets/profile_tab_bar.dart';
import 'package:worldon/views/profile/widgets/profile_users_tab_view/profile_users_tab_view.dart';

class OwnProfile extends StatelessWidget {
  final User user;

  const OwnProfile({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          // TODO: Unify the profiles
          // At the end of the day only the header will be different, so maybe only that will be needed to be mapped
          OwnProfileHeader(user: user),
          const ProfileTabBar(),
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
