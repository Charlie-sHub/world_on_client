import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/application/profile/block_actor/block_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class BlockButton extends StatelessWidget {
  const BlockButton({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) => IconButton(
        icon: const Icon(
          MdiIcons.accountOff,
          size: 40,
          color: WorldOnColors.red,
        ),
        padding: EdgeInsets.zero,
        onPressed: () => context.read<BlockActorBloc>().add(
              BlockActorEvent.blocked(
                user.id,
                context.read<WatchCurrentUserBloc>().state.maybeMap(
                      loadSuccess: (successState) =>
                          successState.user.simplified,
                      orElse: () => SimpleUser.empty(),
                    ),
              ),
            ),
      );
}
