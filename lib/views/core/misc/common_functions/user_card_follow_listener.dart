import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';

void userFollowListener(BuildContext context, FollowActorState state) => state.maybeMap(
      followFailure: (state) => FlushbarHelper.createError(
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
      unFollowFailure: (state) => FlushbarHelper.createError(
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
