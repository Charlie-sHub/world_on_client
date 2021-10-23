import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class CurrentUserProfileButton extends StatelessWidget {
  const CurrentUserProfileButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _size = 25;
    return MaterialButton(
      minWidth: 40,
      elevation: 0,
      padding: EdgeInsets.zero,
      shape: const CircleBorder(),
      onPressed: () => context.read<NavigationActorBloc>().add(
            NavigationActorEvent.profileTapped(
              userIdOption: none(),
              currentUserProfile: true,
            ),
          ),
      onLongPress: () => _onLongPress(context),
      child: SizedBox(
        width: _size,
        height: _size,
        child: BlocBuilder<WatchCurrentUserBloc, WatchCurrentUserState>(
          buildWhen: _buildWhen,
          builder: (context, state) => state.map(
            initial: (_) => const Icon(
              Icons.person_outline,
              size: 25,
            ),
            loadSuccess: (state) => CircleAvatar(
              radius: 15,
              backgroundImage: CachedNetworkImageProvider(state.user.imageURL),
            ),
            loadFailure: (_) => const Icon(
              Icons.person_outline,
              size: 25,
              color: WorldOnColors.red,
            ),
          ),
        ),
      ),
    );
  }

  bool _buildWhen(WatchCurrentUserState previous, WatchCurrentUserState current) => current.map(
        initial: (_) => true,
        loadSuccess: (_) {
          final _previousImageUrl = previous.maybeMap(
            loadSuccess: (successState) => successState.user.imageURL,
            orElse: () => "",
          );
          final _currentImageUrl = current.maybeMap(
            loadSuccess: (successState) => successState.user.imageURL,
            orElse: () => "",
          );
          return _previousImageUrl != _currentImageUrl;
        },
        loadFailure: (_) => true,
      );

  Future _onLongPress(BuildContext context) async {
    showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: WorldOnColors.background,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(
                S.of(context).logOut,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(width: 5),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(
                S.of(context).cancel,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    ).then(
      (confirmed) {
        if (confirmed != null && confirmed) {
          context.read<AuthenticationBloc>().add(
                const AuthenticationEvent.loggedOut(),
              );
        }
      },
    );
  }
}
