import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        MdiIcons.accountPlus,
        size: 40,
      ),
      padding: const EdgeInsets.all(0),
      onPressed: () => context.read<FollowActorBloc>().add(
            FollowActorEvent.followed(user),
          ),
    );
  }
}
