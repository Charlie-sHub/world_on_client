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
        builder: (context, state) => context.read<ExperienceManagementActorBloc>().state.maybeMap(
              actionInProgress: (_) => const CircularProgressIndicator(),
              isCreator: (_) => DeleteButton(experience: experience),
              deletionFailure: (_) => DeleteButton(experience: experience),
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
