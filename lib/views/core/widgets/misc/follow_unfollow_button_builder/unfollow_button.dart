import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class UnFollowButton extends StatelessWidget {
  const UnFollowButton({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        MdiIcons.accountMinus,
        color: WorldOnColors.red,
        size: 40,
      ),
      padding: const EdgeInsets.all(0),
      onPressed: () => context.read<FollowActorBloc>().add(
            FollowActorEvent.unFollowed(user),
          ),
    );
  }
}
