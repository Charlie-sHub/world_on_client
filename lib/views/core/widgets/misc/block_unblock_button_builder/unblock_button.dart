import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/application/profile/block_actor/block_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

class UnBlockButton extends StatelessWidget {
  const UnBlockButton({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        MdiIcons.account,
        size: 40,
      ),
      padding: EdgeInsets.zero,
      onPressed: () => context.read<BlockActorBloc>().add(
            BlockActorEvent.unBlocked(
              user.id,
              context.read<WatchCurrentUserBloc>().state.maybeMap(
                    loadSuccess: (successState) => successState.user.simplified,
                    orElse: () => SimpleUser.empty(),
                  ),
            ),
          ),
    );
  }
}
