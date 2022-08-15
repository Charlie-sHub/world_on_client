import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/generated/l10n.dart';

void onExperienceManagementFailure(
  Failure failure,
  BuildContext context,
) =>
    FlushbarHelper.createError(
      duration: const Duration(seconds: 2),
      message: failure.maybeMap(
        coreData: (coreDataFailure) => coreDataFailure.coreDataFailure.maybeMap(
          nameAlreadyInUse: (_) => S.of(context).experienceTitleAlreadyInUse,
          serverError: (failure) => failure.errorString,
          orElse: () => S.of(context).unknownCoreDataError,
        ),
        coreApplication: (coreApplicationFailure) => coreApplicationFailure.coreApplicationFailure.maybeMap(
          emptyFields: (_) => S.of(context).emptyFields,
          orElse: () => S.of(context).unknownError,
        ),
        experienceManagementApplication: (experienceManagementApplication) => experienceManagementApplication.experienceManagementApplicationFailure.map(
          surpassedImageLimit: (failure) => S.of(context).surpassedImageLimit + failure.limit.toString(),
        ),
        coreDomain: (coreDomainFailure) => coreDomainFailure.coreDomainFailure.maybeMap(
          unAuthorizedError: (_) => S.of(context).unauthorizedError,
          orElse: () => S.of(context).unknownError,
        ),
        orElse: () => S.of(context).unknownError,
      ),
    ).show(context);
