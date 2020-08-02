import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/profile/block_actor/block_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

import '../../../../injection.dart';

class BlockUnblockButtonBuilder extends StatelessWidget {
  const BlockUnblockButtonBuilder({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BlockActorBloc>()
        ..add(
          BlockActorEvent.initialized(user),
        ),
      child: BlocListener<BlockActorBloc, BlockActorState>(
        listener: userBlockListener,
        child: BlocBuilder<BlockActorBloc, BlockActorState>(
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

void userBlockListener(BuildContext context, BlockActorState state) => state.maybeMap(
      blockFailure: (state) => FlushbarHelper.createError(
        duration: const Duration(seconds: 2),
        message: state.failure.maybeMap(
          coreData: (failure) => failure.coreDataFailure.maybeMap(
            serverError: (failure) => failure.errorString,
            orElse: () => "Unknown Error",
          ),
          profileDomain: (failure) => failure.profileDomainFailure.maybeMap(
            blockItself: (_) => "You can't block yourself",
            orElse: () => "Unknown Error",
          ),
          orElse: () => "Unknown Error",
        ),
      ).show(context),
      unBlockFailure: (state) => FlushbarHelper.createError(
        duration: const Duration(seconds: 2),
        message: state.failure.maybeMap(
          coreData: (failure) => failure.coreDataFailure.maybeMap(
            serverError: (failure) => failure.errorString,
            orElse: () => "Unknown Error",
          ),
          orElse: () => "Unknown Error",
        ),
      ).show(context),
  orElse: () => null,
);
