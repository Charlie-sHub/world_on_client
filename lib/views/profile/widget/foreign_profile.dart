import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/block_actor/block_actor_bloc.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/common_functions/user_card_block_listener.dart';
import 'package:worldon/views/core/misc/common_functions/user_card_follow_listener.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/misc/block_button.dart';
import 'package:worldon/views/core/widget/misc/follow_button.dart';
import 'package:worldon/views/core/widget/misc/unblock_button.dart';
import 'package:worldon/views/core/widget/misc/unfollow_button.dart';
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
    return Center(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
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
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
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
                  BlocBuilder<FollowActorBloc, FollowActorState>(
                    builder: (context, state) => state.map(
                      initial: (_) => Container(),
                      actionInProgress: (_) => const CircularProgressIndicator(),
                      follows: (_) => UnFollowButton(user: user),
                      followsNot: (_) => FollowButton(user: user),
                      followSuccess: (_) => UnFollowButton(user: user),
                      followFailure: (_) => FollowButton(user: user),
                      unFollowSuccess: (_) => FollowButton(user: user),
                      unFollowFailure: (_) => UnFollowButton(user: user),
                    ),
                  ),
                  BlocBuilder<BlockActorBloc, BlockActorState>(
                    builder: (context, state) => state.map(
                      initial: (_) => Container(),
                      actionInProgress: (_) => const CircularProgressIndicator(),
                      blocks: (_) => UnBlockButton(user: user),
                      blocksNot: (_) => BlockButton(user: user),
                      blockSuccess: (_) => UnBlockButton(user: user),
                      blockFailure: (_) => BlockButton(user: user),
                      unBlockSuccess: (_) => BlockButton(user: user),
                      unBlockFailure: (_) => UnBlockButton(user: user),
                    ),
                  ),
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
