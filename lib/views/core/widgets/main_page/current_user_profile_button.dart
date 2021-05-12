import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/user_profile_button_watcher/user_profile_button_watcher_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class CurrentUserProfileButton extends StatelessWidget {
  const CurrentUserProfileButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileButtonWatcherBloc, UserProfileButtonWatcherState>(
      builder: (context, state) => state.map(
        initial: (_) => const Icon(
          Icons.person_outline,
          size: 25,
        ),
        actionInProgress: (_) => const WorldOnProgressIndicator(
          size: 15,
        ),
        loadSuccess: (state) => MaterialButton(
          minWidth: 0,
          elevation: 0,
          // color: Colors.transparent,
          padding: const EdgeInsets.all(0),
          shape: const CircleBorder(),
          onPressed: () => context.read<NavigationActorBloc>().add(
                NavigationActorEvent.profileTapped(
                  userOption: none(),
                  currentUserProfile: true,
                ),
              ),
          child: CircleAvatar(
            radius: 15,
            backgroundImage: CachedNetworkImageProvider(state.imageUrl),
          ),
        ),
        loadFailure: (_) => const Icon(
          Icons.person_outline,
          size: 25,
          color: WorldOnColors.red,
        ),
      ),
    );
  }
}
