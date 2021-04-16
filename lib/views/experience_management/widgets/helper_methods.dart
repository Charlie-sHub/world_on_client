import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/generated/l10n.dart';

void onExperienceManagementFailure(Failure failure, BuildContext context) => FlushbarHelper.createError(
      duration: const Duration(seconds: 2),
      message: failure.maybeMap(
        coreData: (_coreDataFailure) => _coreDataFailure.coreDataFailure.maybeMap(
          nameAlreadyInUse: (_) => S.of(context).experienceTitleAlreadyInUse,
          serverError: (failure) => failure.errorString,
          orElse: () => S.of(context).unknownCoreDataError,
        ),
        coreApplication: (_coreApplicationFailure) => _coreApplicationFailure.coreApplicationFailure.maybeMap(
          emptyFields: (_) => S.of(context).emptyFields,
          orElse: () => S.of(context).unknownError,
        ),
        experienceManagementApplication: (_experienceManagementApplication) => _experienceManagementApplication.experienceManagementApplicationFailure.map(
          surpassedImageLimit: (_failure) => S.of(context).surpassedImageLimit + _failure.limit.toString(),
        ),
        orElse: () => S.of(context).unknownError,
      ),
    ).show(context);
