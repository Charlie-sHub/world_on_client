import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        FontAwesomeIcons.userPlus,
        color: WorldOnColors.accent,
      ),
      onPressed: () => context.bloc<FollowActorBloc>().add(
            FollowActorEvent.followed(user),
          ),
    );
  }
}
