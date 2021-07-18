import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class UnFollowButton extends StatelessWidget {
  const UnFollowButton({
    Key? key,
    required this.userId,
  }) : super(key: key);

  final UniqueId userId;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<FollowActorBloc>().add(
            FollowActorEvent.unFollowed(
              userId,
              context.read<WatchCurrentUserBloc>().state.maybeMap(
                    loadSuccess: (successState) => successState.user.simplified,
                    orElse: () => SimpleUser.empty(),
                  ),
            ),
          ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          WorldOnColors.blue,
        ),
      ),
      child: Text(
        S.of(context).following,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
