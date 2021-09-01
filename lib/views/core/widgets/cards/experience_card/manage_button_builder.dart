import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_actor/experience_management_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';

import 'manage_menu_button.dart';

class ManageButtonBuilder extends StatelessWidget {
  const ManageButtonBuilder({
    Key? key,
    required this.experience,
    required this.reloadFunction,
  }) : super(key: key);

  final Experience experience;
  final Function() reloadFunction;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceManagementActorBloc>()
        ..add(
          ExperienceManagementActorEvent.checkCreator(experience),
        ),
      child: BlocConsumer<ExperienceManagementActorBloc, ExperienceManagementActorState>(
        listenWhen: (previous, current) => current.maybeMap(
          deletionFailure: (_) => true,
          orElse: () => false,
        ),
        listener: _experienceDeletionListener,
        builder: (context, state) => state.maybeMap(
          actionInProgress: (_) => const CircularProgressIndicator(),
          isCreator: (_) => ManageMenuButton(
            experience: experience,
            reloadFunction: reloadFunction,
          ),
          deletionFailure: (_) => ManageMenuButton(
            experience: experience,
            reloadFunction: reloadFunction,
          ),
          orElse: () => Container(),
        ),
      ),
    );
  }

  void _experienceDeletionListener(BuildContext context, ExperienceManagementActorState state) => state.maybeMap(
        deletionFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => S.of(context).unknownError,
            ),
            coreDomain: (failure) => failure.coreDomainFailure.maybeMap(
              unAuthorizedError: (_) => S.of(context).unauthorizedError,
              orElse: () => S.of(context).unknownError,
            ),
            orElse: () => S.of(context).unknownError,
          ),
        ).show(context),
        orElse: () => FlushbarHelper.createInformation(message: "wew"),
      );
}
