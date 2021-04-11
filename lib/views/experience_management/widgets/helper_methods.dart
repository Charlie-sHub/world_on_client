import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/generated/l10n.dart';

void onExperienceManagementFailure(Failure failure, BuildContext context) => failure.maybeMap(
      coreData: (_coreDataFailure) => _coreDataFailure.coreDataFailure.maybeMap(
        nameAlreadyInUse: (_) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: S.of(context).experienceTitleAlreadyInUse,
        ).show(context),
        serverError: (failure) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: failure.errorString,
        ).show(context),
        orElse: () => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: S.of(context).unknownCoreDataError,
        ).show(context),
      ),
      experienceManagementApplication: (_experienceManagementApplication) => _experienceManagementApplication.experienceManagementApplicationFailure.map(
        surpassedImageLimit: (_failure) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: S.of(context).surpassedImageLimit + _failure.limit.toString(),
        ).show(context),
      ),
      orElse: () => FlushbarHelper.createError(
        duration: const Duration(seconds: 2),
        message: S.of(context).unknownError,
      ).show(context),
    );
