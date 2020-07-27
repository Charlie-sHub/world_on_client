import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class FollowUnfollowButtonBuilder extends StatelessWidget {
  const FollowUnfollowButtonBuilder({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowActorBloc, FollowActorState>(
      builder: (context, state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        transitionBuilder: (child, animation) => FadeTransition(
          opacity: animation,
          child: child,
        ),
        child: state.map(
          initial: (_) => Container(),
          actionInProgress: (_) => const CircularProgressIndicator(),
          follows: (_) => UnFollowButton(user: user),
          followsNot: (_) => FollowButton(user: user),
          followSuccess: (_) => UnFollowButton(user: user),
          followFailure: (_) => FollowButton(user: user),
          unFollowSuccess: (_) => FollowButton(user: user),
          unFollowFailure: (_) => UnFollowButton(user: user),
        ),
      ),
    );
  }
}

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

class UnFollowButton extends StatelessWidget {
  const UnFollowButton({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        FontAwesomeIcons.userMinus,
        color: WorldOnColors.red,
      ),
      onPressed: () => context.bloc<FollowActorBloc>().add(
            FollowActorEvent.unFollowed(user),
          ),
    );
  }
}
