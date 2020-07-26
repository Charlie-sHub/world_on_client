import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:worldon/application/profile/block_actor/block_actor_bloc.dart';

void userBlockListener(BuildContext context, BlockActorState state) => state.maybeMap(
      blockFailure: (state) => FlushbarHelper.createError(
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
