import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
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

import '../../../../injection.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({Key key, @required this.user}) : super(key: key);

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
        child: Card(
          shape: const RoundedRectangleBorder(),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: FlatButton(
                      onPressed: () => context.bloc<NavigationActorBloc>().add(
                            NavigationActorEvent.profileTapped(some(user)),
                          ),
                      child: const CircleAvatar(
                        radius: 25,
                        // TODO: Implement User image
                        backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
                      ),
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
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: WorldOnColors.background,
                            ),
                          ),
                          AutoSizeText(
                            user.username.getOrCrash(),
                            style: const TextStyle(
                              fontSize: 15,
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
                  style: const TextStyle(
                    color: WorldOnColors.background,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    AutoSizeText(
                      "Level: ${user.level.getOrCrash().toString()}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: _getColor(user.level.getOrCrash()),
                      ),
                    ),
                    Expanded(
                      child: LinearPercentIndicator(
                        lineHeight: 10,
                        // TODO: Implement a way to measure what percentage to the next level the user is in based on its experience points
                        percent: 0.7,
                        backgroundColor: WorldOnColors.background,
                        progressColor: WorldOnColors.primary,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Color _getColor(int level) {
  if (level < 30) {
    return Colors.blue;
  } else if (level >= 30 && level < 70) {
    return Colors.purple;
  } else {
    return Colors.red;
  }
}
