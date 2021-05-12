import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';

import '../../../../../injection.dart';

class CircularAvatarUserCard extends StatelessWidget {
  const CircularAvatarUserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;
  static const double _avatarRadius = 35;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<NavigationActorBloc>().add(
            NavigationActorEvent.profileTapped(
              userOption: some(user),
              currentUserProfile: false,
            ),
          ),
      child: Column(
        children: <Widget>[
          BlocProvider(
            create: (context) => getIt<FollowActorBloc>()
              ..add(
                FollowActorEvent.initialized(user),
              ),
            child: BlocBuilder<FollowActorBloc, FollowActorState>(
              builder: (context, state) => state.maybeMap(
                initial: (_) => Container(),
                actionInProgress: (_) => const CircularProgressIndicator(),
                follows: (_) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      UserImage(
                        user: user,
                        avatarRadius: _avatarRadius,
                        checkIconSize: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: WorldOnColors.primary.withOpacity(0.25),
                          shape: BoxShape.circle,
                        ),
                        height: _avatarRadius * 2,
                        width: _avatarRadius * 2,
                        child: const Center(
                          child: Icon(
                            Icons.check_rounded,
                            color: WorldOnColors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      // Having this check on top of the other is pretty dumb to be honest
                      // But it works for now
                      // Else i'd have to separate a few widgets
                      if (user.adminPowers)
                        Positioned(
                          top: 0,
                          left: 0,
                          child: ClipOval(
                            child: Container(
                              color: Colors.white,
                              child: const Icon(
                                Icons.check_circle_rounded,
                                size: 20,
                                color: WorldOnColors.blue,
                              ),
                            ),
                          ),
                        ),
                    ],
                  );
                },
                orElse: () => UserImage(
                  user: user,
                  avatarRadius: _avatarRadius,
                  checkIconSize: _avatarRadius * 0.2,
                ),
              ),
            ),
          ),
          Flexible(
            child: Column(
              children: <Widget>[
                FittedBox(
                  child: AutoSizeText(
                    user.name.getOrCrash(),
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
                FittedBox(
                  child: AutoSizeText(
                    "@${user.username.getOrCrash()}",
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 7,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
