import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/user_profile_button_watcher_bloc.dart';
import 'package:worldon/application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';
import 'package:worldon/views/core/widgets/misc/followers_following_counters.dart';
import 'package:worldon/views/core/widgets/misc/user_experience_info.dart';

class OwnProfileHeader extends SliverPersistentHeaderDelegate {
  const OwnProfileHeader({
    required this.user,
    required this.maxExtent,
    required this.minExtent,
  });

  final User user;
  @override
  final double maxExtent;
  @override
  final double minExtent;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: WorldOnColors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Hero(
                      tag: "userImage",
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: CachedNetworkImageProvider(user.imageURL),
                      ),
                    ),
                    if (user.adminPowers)
                      ClipOval(
                        child: Container(
                          color: Colors.white,
                          child: const Icon(
                            Icons.check_circle_rounded,
                            color: WorldOnColors.accent,
                          ),
                        ),
                      ),
                  ],
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
              // Showing coins would be annoying to update
              // So they will be hidden for now
              /*
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Icon(
                      Icons.attach_money,
                      color: WorldOnColors.red,
                    ),
                    AutoSizeText(
                      user.coins.toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        color: WorldOnColors.red,
                      ),
                    ),
                  ],
                ),
              ),
               */
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () => context.router
                      .push(
                    ProfileEditingPageRoute(user: user),
                  )
                      .then(
                    (_) {
                      context.read<ProfileWatcherBloc>().add(
                            ProfileWatcherEvent.initializedForeignOrOwn(
                              none(),
                            ),
                          );
                      context.read<UserProfileButtonWatcherBloc>().add(
                            const UserProfileButtonWatcherEvent.initialized(),
                          );
                    },
                  ),
                  child: Text(S.of(context).editButton),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: AutoSizeText(
                user.description.getOrCrash(),
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: WorldOnColors.background,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: FollowersFollowingCounters(user: user),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: UserExperienceInfo(user: user),
          ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
