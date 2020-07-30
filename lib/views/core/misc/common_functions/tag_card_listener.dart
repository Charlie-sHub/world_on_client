import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';

void tagCardListener(BuildContext context, TagCardActorState state) => state.maybeMap(
      additionFailure: (state) => FlushbarHelper.createError(
        duration: const Duration(seconds: 2),
        message: state.failure.maybeMap(
          coreData: (failure) => failure.coreDataFailure.maybeMap(
            serverError: (failure) => failure.errorString,
            orElse: () => "Unknown Error",
          ),
          orElse: () => "Unknown Error",
        ),
      ).show(context),
      dismissalFailure: (state) => FlushbarHelper.createError(
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
