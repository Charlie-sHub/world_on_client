import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';

import 'add_to_log_button.dart';
import 'dismiss_from_log_button.dart';

class LogButton extends StatelessWidget {
  const LogButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExperienceCardActorBloc, ExperienceCardActorState>(
      builder: (context, state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: state.map(
          initial: (_) => Container(),
          actionInProgress: (_) => const CircularProgressIndicator(),
          inLog: (_) => DismissFromLogButton(experience: experience),
          notInLog: (_) => AddToLogButton(experience: experience),
          additionSuccess: (_) => DismissFromLogButton(experience: experience),
          additionFailure: (_) => AddToLogButton(experience: experience),
          dismissalSuccess: (_) => AddToLogButton(experience: experience),
          dismissalFailure: (_) => DismissFromLogButton(experience: experience),
        ),
      ),
    );
  }
}
