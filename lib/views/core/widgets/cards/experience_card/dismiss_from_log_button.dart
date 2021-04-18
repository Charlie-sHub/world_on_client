import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class DismissFromLogButton extends StatelessWidget {
  const DismissFromLogButton({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          WorldOnColors.red,
        ),
      ),
      onPressed: () => context.read<ExperienceCardActorBloc>().add(
            ExperienceCardActorEvent.dismissedExperienceFromLog(experience),
          ),
      child: Text(
        S.of(context).dismissFromLog,
        style: const TextStyle(
          color: WorldOnColors.white,
        ),
      ),
    );
  }
}
