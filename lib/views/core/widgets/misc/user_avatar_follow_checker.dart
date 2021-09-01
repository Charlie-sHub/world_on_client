import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';

import '../../../../../injection.dart';

class UserAvatarFollowChecker extends StatelessWidget {
  final SimpleUser user;
  final double avatarRadius;
  final double checkIconSize;

  const UserAvatarFollowChecker({
    Key? key,
    required this.user,
    required this.avatarRadius,
    required this.checkIconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchCurrentUserBloc, WatchCurrentUserState>(
      buildWhen: _buildWhen,
      builder: (context, state) => state.map(
        initial: (_) => const CircularProgressIndicator(),
        loadSuccess: (successState) => BlocProvider(
          create: (context) => getIt<FollowActorBloc>()
            ..add(
              FollowActorEvent.initialized(
                user.id,
                successState.user.followedUsersIds,
              ),
            ),
          child: BlocBuilder<FollowActorBloc, FollowActorState>(
            builder: (context, state) => state.maybeMap(
              follows: (_) => UserImage(
                user: user,
                avatarRadius: avatarRadius,
                checkIconSize: checkIconSize,
                follows: true,
              ),
              orElse: () => UserImage(
                user: user,
                avatarRadius: avatarRadius,
                checkIconSize: checkIconSize,
                follows: false,
              ),
            ),
          ),
        ),
        loadFailure: (_) => UserImage(
          user: user,
          avatarRadius: avatarRadius,
          checkIconSize: checkIconSize,
          follows: false,
        ),
      ),
    );
  }

  bool _buildWhen(WatchCurrentUserState previous, WatchCurrentUserState current) => current.map(
        initial: (_) => true,
        loadSuccess: (_) {
          final _previousFollowsContainsUser = previous.maybeMap(
            loadSuccess: (successState) => successState.user.followedUsersIds.contains(
              user.id,
            ),
            orElse: () => true,
          );
          final _currentFollowsContainsUser = current.maybeMap(
            loadSuccess: (successState) => successState.user.followedUsersIds.contains(
              user.id,
            ),
            orElse: () => true,
          );
          return _previousFollowsContainsUser != _currentFollowsContainsUser;
        },
        loadFailure: (_) => true,
      );
}
