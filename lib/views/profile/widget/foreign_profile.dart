import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/block_actor/block_actor_bloc.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/common_functions/user_card_block_listener.dart';
import 'package:worldon/views/core/misc/common_functions/user_card_follow_listener.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/misc/block_unblock_button_builder.dart';
import 'package:worldon/views/core/widget/misc/follow_unfollow_button_builder.dart';
import 'package:worldon/views/profile/widget/profile_achievements_tab_view.dart';
import 'package:worldon/views/profile/widget/profile_experiences_tab_view.dart';
import 'package:worldon/views/profile/widget/profile_tab_bar.dart';
import 'package:worldon/views/profile/widget/profile_users_tab_view.dart';

import '../../../injection.dart';

class ForeignProfile extends StatelessWidget {
  final User user;

  const ForeignProfile({Key key, @required this.user}) : super(key: key);

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

class ForeignProfileHeader extends StatelessWidget {
  const ForeignProfileHeader({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<FollowActorBloc>()
            ..add(
              FollowActorEvent.initialized(user),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<BlockActorBloc>()
            ..add(
              BlockActorEvent.initialized(user),
            ),
        ),
      ],
      child: MultiBlocListener(
        listeners: const [
          BlocListener<FollowActorBloc, FollowActorState>(
            listener: userFollowListener,
          ),
          BlocListener<BlockActorBloc, BlockActorState>(
            listener: userBlockListener,
          ),
        ],
        child: Container(
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
                  FollowUnfollowButtonBuilder(user: user),
                  BlockUnblockButtonBuilder(user: user),
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
            ],
          ),
        ),
      ),
    );
  }
}
