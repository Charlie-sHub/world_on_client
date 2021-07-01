import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';

import '../../../../../injection.dart';

class UserAvatarFollowChecker extends StatelessWidget {
  final UniqueId userId;
  final String imageUrl;
  final bool adminPowers;
  final double avatarRadius;
  final double checkIconSize;

  const UserAvatarFollowChecker({
    Key? key,
    required this.userId,
    required this.imageUrl,
    required this.adminPowers,
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
                userId,
                successState.user.followedUsersIds,
              ),
            ),
          child: BlocBuilder<FollowActorBloc, FollowActorState>(
            builder: (context, state) => state.maybeMap(
              follows: (_) => UserImage(
                userId: userId,
                imageUrl: imageUrl,
                adminPowers: adminPowers,
                avatarRadius: avatarRadius,
                checkIconSize: checkIconSize,
                follows: true,
              ),
              orElse: () => UserImage(
                userId: userId,
                imageUrl: imageUrl,
                adminPowers: adminPowers,
                avatarRadius: avatarRadius,
                checkIconSize: checkIconSize,
                follows: false,
              ),
            ),
          ),
        ),
        loadFailure: (_) => UserImage(
          userId: userId,
          imageUrl: imageUrl,
          adminPowers: adminPowers,
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
              userId,
            ),
            orElse: () => true,
          );
          final _currentFollowsContainsUser = current.maybeMap(
            loadSuccess: (successState) => successState.user.followedUsersIds.contains(
              userId,
            ),
            orElse: () => true,
          );
          return _previousFollowsContainsUser != _currentFollowsContainsUser;
        },
        loadFailure: (_) => true,
      );
}
