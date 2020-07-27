import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/profile/block_actor/block_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class BlockUnblockButtonBuilder extends StatelessWidget {
  const BlockUnblockButtonBuilder({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlockActorBloc, BlockActorState>(
      builder: (context, state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        transitionBuilder: (child, animation) => FadeTransition(
          opacity: animation,
          child: child,
        ),
        child: state.map(
          initial: (_) => Container(),
          actionInProgress: (_) => const CircularProgressIndicator(),
          blocks: (_) => UnBlockButton(user: user),
          blocksNot: (_) => BlockButton(user: user),
          blockSuccess: (_) => UnBlockButton(user: user),
          blockFailure: (_) => BlockButton(user: user),
          unBlockSuccess: (_) => BlockButton(user: user),
          unBlockFailure: (_) => UnBlockButton(user: user),
        ),
      ),
    );
  }
}

class BlockButton extends StatelessWidget {
  const BlockButton({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        FontAwesomeIcons.userSlash,
        color: WorldOnColors.red,
      ),
      onPressed: () => context.bloc<BlockActorBloc>().add(
            BlockActorEvent.blocked(user),
          ),
    );
  }
}

class UnBlockButton extends StatelessWidget {
  const UnBlockButton({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        FontAwesomeIcons.user,
        color: Colors.green,
      ),
      onPressed: () => context.bloc<BlockActorBloc>().add(
            BlockActorEvent.unBlocked(user),
          ),
    );
  }
}
