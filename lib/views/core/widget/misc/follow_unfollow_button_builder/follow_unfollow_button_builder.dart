import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widget/misc/follow_unfollow_button_builder/follow_button.dart';
import 'package:worldon/views/core/widget/misc/follow_unfollow_button_builder/unfollow_button.dart';

import '../../../../../injection.dart';

class FollowUnfollowButtonBuilder extends StatelessWidget {
  const FollowUnfollowButtonBuilder({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FollowActorBloc>()
        ..add(
          FollowActorEvent.initialized(user),
        ),
      child: BlocListener<FollowActorBloc, FollowActorState>(
        listener: _userFollowListener,
        child: BlocBuilder<FollowActorBloc, FollowActorState>(
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
        ),
      ),
    );
  }

  void _userFollowListener(BuildContext context, FollowActorState state) => state.maybeMap(
        followFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => "Unknown Error",
            ),
            profileDomain: (failure) => failure.profileDomainFailure.maybeMap(
              followItself: (_) => "You can't follow yourself",
              orElse: () => "Unknown Error",
            ),
            orElse: () => "Unknown Error",
          ),
        ).show(context),
      unFollowFailure: (state) =>
        FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) =>
              failure.coreDataFailure.maybeMap(
                serverError: (failure) => failure.errorString,
                orElse: () => "Unknown Error",
              ),
            orElse: () => "Unknown Error",
          ),
        ).show(context),
      orElse: () => null,
    );
}
