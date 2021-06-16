import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/misc/follow_unfollow_button_builder/follow_button.dart';
import 'package:worldon/views/core/widgets/misc/follow_unfollow_button_builder/unfollow_button.dart';

import '../../../../../injection.dart';

class FollowUnfollowButtonBuilder extends StatelessWidget {
  const FollowUnfollowButtonBuilder({
    Key? key,
    required this.userId,
  }) : super(key: key);

  final UniqueId userId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: BlocProvider(
        create: (context) => getIt<FollowActorBloc>()
          ..add(
            FollowActorEvent.initialized(userId),
          ),
        child: BlocConsumer<FollowActorBloc, FollowActorState>(
          listener: _userIdFollowListener,
          builder: (context, state) => AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            transitionBuilder: (child, animation) => FadeTransition(
              opacity: animation,
              child: child,
            ),
            child: state.map(
              initial: (_) => Container(),
              actionInProgress: (_) => const CircularProgressIndicator(),
              follows: (_) => UnFollowButton(userId: userId),
              followsNot: (_) => FollowButton(userId: userId),
              followSuccess: (_) => UnFollowButton(userId: userId),
              followFailure: (_) => FollowButton(userId: userId),
              unFollowSuccess: (_) => FollowButton(userId: userId),
              unFollowFailure: (_) => UnFollowButton(userId: userId),
            ),
          ),
        ),
      ),
    );
  }

  void _userIdFollowListener(BuildContext context, FollowActorState state) => state.maybeMap(
        followFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => S.of(context).unknownError,
            ),
            profileDomain: (failure) => failure.profileDomainFailure.maybeMap(
              followItself: (_) => S.of(context).followItself,
              orElse: () => S.of(context).unknownError,
            ),
            orElse: () => S.of(context).unknownError,
          ),
        ).show(context),
        unFollowFailure: (state) => FlushbarHelper.createError(
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
