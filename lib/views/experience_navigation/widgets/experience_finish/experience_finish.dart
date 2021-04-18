import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_finish_actor/experience_finish_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_finish/finish_success_view.dart';

class ExperienceFinish extends StatelessWidget {
  final Experience experience;

  const ExperienceFinish({Key? key, required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceFinishActorBloc>()
        ..add(
          ExperienceFinishActorEvent.finishedExperience(experience),
        ),
      child: BlocConsumer<ExperienceFinishActorBloc, ExperienceFinishActorState>(
        listenWhen: (previous, current) => current.maybeMap(
          finishSuccess: (state) => state.leveledUp,
          orElse: () => false,
        ),
        listener: (context, state) => state.maybeMap(
          finishSuccess: (state) => FlushbarHelper.createSuccess(
            duration: const Duration(seconds: 4),
            message: S.of(context).levelUp,
          ).show(context),
          orElse: () {},
        ),
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          actionInProgress: (_) => const WorldOnProgressIndicator(),
          finishSuccess: (_) => FinishSuccessView(experience: experience),
          finishFailure: (state) => ErrorDisplay(
            retryFunction: () => context.read<ExperienceFinishActorBloc>().add(
                  ExperienceFinishActorEvent.finishedExperience(experience),
                ),
            failure: state.failure,
            specificMessage: none(),
          ),
        ),
      ),
    );
  }
}
