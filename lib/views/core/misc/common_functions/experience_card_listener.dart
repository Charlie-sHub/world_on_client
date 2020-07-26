import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';

// TODO: Customize snackbars
// ANd ensure they show above the navigation bar
void experienceCardListener(BuildContext context, ExperienceCardActorState state) => state.maybeMap(
      actionInProgress: (_) => FlushbarHelper.createLoading(
        message: "Action in progress",
        linearProgressIndicator: const LinearProgressIndicator(),
      ).show(context),
      additionFailure: (state) => FlushbarHelper.createError(
        message: state.failure.maybeMap(
          coreData: (failure) => failure.coreDataFailure.maybeMap(
            serverError: (failure) => failure.errorString,
            orElse: () => "Unknown Error",
          ),
          orElse: () => "Unknown Error",
        ),
      ).show(context),
      dismissalFailure: (state) => FlushbarHelper.createError(
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
