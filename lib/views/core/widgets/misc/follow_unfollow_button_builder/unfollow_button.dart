import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      icon: const FaIcon(
        FontAwesomeIcons.userMinus,
        color: WorldOnColors.red,
      ),
      onPressed: () => context.read<FollowActorBloc>().add(
            FollowActorEvent.unFollowed(user),
          ),
    );
  }
}
