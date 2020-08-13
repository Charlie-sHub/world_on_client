import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_finish_actor/experience_finish_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';

import 'finish_success_view.dart';

class ExperienceFinish extends StatelessWidget {
  final Experience experience;

  const ExperienceFinish({Key key, @required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceFinishActorBloc>()
        ..add(
          ExperienceFinishActorEvent.finishedExperience(experience),
        ),
      child: BlocBuilder<ExperienceFinishActorBloc, ExperienceFinishActorState>(
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          actionInProgress: (_) => WorldOnProgressIndicator(),
          finishSuccess: (_) => FinishSuccessView(experience: experience),
          finishFailure: (state) => InkWell(
            onTap: () async => context.bloc<ExperienceFinishActorBloc>().add(
                  ExperienceFinishActorEvent.finishedExperience(experience),
                ),
            child: CriticalErrorDisplay(failure: state.failure),
          ),
        ),
      ),
    );
  }
}
