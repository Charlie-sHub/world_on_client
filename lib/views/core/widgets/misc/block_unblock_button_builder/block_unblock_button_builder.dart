import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/block_actor/block_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/misc/block_unblock_button_builder/block_button.dart';
import 'package:worldon/views/core/widgets/misc/block_unblock_button_builder/unblock_button.dart';

import '../../../../../injection.dart';

class BlockUnblockButtonBuilder extends StatelessWidget {
  const BlockUnblockButtonBuilder({
    Key? key,
    required this.user,
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
        listener: _userBlockListener,
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

  void _userBlockListener(BuildContext context, BlockActorState state) => state.maybeMap(
        blockFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => S.of(context).unknownError,
            ),
            profileDomain: (failure) => failure.profileDomainFailure.maybeMap(
              blockItself: (_) => "You can't block yourself",
              orElse: () => S.of(context).unknownError,
            ),
            orElse: () => S.of(context).unknownError,
          ),
        ).show(context),
        unBlockFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => S.of(context).unknownError,
            ),
            orElse: () => S.of(context).unknownError,
          ),
        ).show(context),
        orElse: () {},
      );
}
