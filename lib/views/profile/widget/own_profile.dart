import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';
import 'package:worldon/views/core/widget/misc/user_experience_info.dart';
import 'package:worldon/views/profile/widget/profile_achievements_tab_view.dart';
import 'package:worldon/views/profile/widget/profile_experiences_tab_view.dart';
import 'package:worldon/views/profile/widget/profile_tab_bar.dart';
import 'package:worldon/views/profile/widget/profile_users_tab_view.dart';

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

class OwnProfileHeader extends StatelessWidget {
  const OwnProfileHeader({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WorldOnColors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(5),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AutoSizeText(
                        user.name.getOrCrash(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: WorldOnColors.background,
                        ),
                      ),
                      AutoSizeText(
                        user.username.getOrCrash(),
                        style: const TextStyle(
                          fontSize: 18,
                          color: WorldOnColors.background,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: RaisedButton(
                  onPressed: () => context.navigator.push(
                    Routes.profileEditingPage,
                    arguments: ProfileEditingPageArguments(user: user),
                  ),
                  child: const Text("Edit"),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: AutoSizeText(
              user.description.getOrCrash(),
              textAlign: TextAlign.justify,
              style: const TextStyle(
                color: WorldOnColors.background,
              ),
            ),
          ),
          UserExperienceInfo(user: user),
        ],
      ),
    );
  }
}
