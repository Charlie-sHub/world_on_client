import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_actor/experience_management_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';

import 'delete_button.dart';

class DeleteButtonBuilder extends StatelessWidget {
  const DeleteButtonBuilder({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceManagementActorBloc>(),
      child: BlocConsumer<ExperienceManagementActorBloc, ExperienceManagementActorState>(
        listener: _experienceDeletionListener,
        builder: (context, state) => state.maybeMap(
          initial: (_) => DeleteButton(experience: experience),
          actionInProgress: (_) => const CircularProgressIndicator(),
          isCreator: (_) => DeleteButton(experience: experience),
          isNotCreator: (_) => Container(),
          deletionFailure: (_) => DeleteButton(experience: experience),
          orElse: () => null,
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
        orElse: () => null,
      );
}
