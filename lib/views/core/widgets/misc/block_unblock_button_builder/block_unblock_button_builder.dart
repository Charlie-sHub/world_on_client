import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/application/profile/block_actor/block_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widgets/misc/block_unblock_button_builder/block_button.dart';
import 'package:worldon/views/core/widgets/misc/block_unblock_button_builder/unblock_button.dart';

class BlockUnblockButtonBuilder extends StatelessWidget {
  const BlockUnblockButtonBuilder({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 40,
        height: 40,
        child: BlocBuilder<WatchCurrentUserBloc, WatchCurrentUserState>(
          buildWhen: _buildWhen,
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadSuccess: (successState) => BlocProvider(
              create: (context) => getIt<BlockActorBloc>()
                ..add(
                  BlockActorEvent.initialized(
                    user.id,
                    successState.user.blockedUsersIds,
                  ),
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
                      actionInProgress: (_) =>
                          const CircularProgressIndicator(),
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
            ),
            loadFailure: (_) => BlockButton(user: user),
          ),
        ),
      );

  void _userBlockListener(BuildContext context, BlockActorState state) =>
      state.maybeMap(
        blockFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => S.of(context).unknownError,
            ),
            profileDomain: (failure) => failure.profileDomainFailure.maybeMap(
              blockItself: (_) => S.of(context).cantBlockSelf,
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
        orElse: () => null,
      );

  bool _buildWhen(
    WatchCurrentUserState previous,
    WatchCurrentUserState current,
  ) =>
      current.map(
        initial: (_) => true,
        loadSuccess: (_) {
          final previousBlockedContainsUser = previous.maybeMap(
            loadSuccess: (successState) =>
                successState.user.blockedUsersIds.contains(
              user.id,
            ),
            orElse: () => true,
          );
          final currentBlockedContainsUser = current.maybeMap(
            loadSuccess: (successState) =>
                successState.user.blockedUsersIds.contains(
              user.id,
            ),
            orElse: () => true,
          );
          return previousBlockedContainsUser != currentBlockedContainsUser;
        },
        loadFailure: (_) => true,
      );
}
