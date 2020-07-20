import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';

void tagCardListener(BuildContext context, TagCardActorState state) => state.maybeMap(
      actionInProgress: (_) => FlushbarHelper.createLoading(
        message: "Action in progress",
        linearProgressIndicator: const LinearProgressIndicator(),
      ).show(context),
      additionSuccess: (_) => FlushbarHelper.createSuccess(
        message: "Success",
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
      dismissalSuccess: (state) => (_) => FlushbarHelper.createSuccess(
            message: "Success",
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
