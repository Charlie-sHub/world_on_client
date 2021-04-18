import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class AddToLogButton extends StatelessWidget {
  const AddToLogButton({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          WorldOnColors.background,
        ),
      ),
      onPressed: () => context.read<ExperienceCardActorBloc>().add(
            ExperienceCardActorEvent.addedExperienceToLog(experience),
          ),
      child: Text(
        S.of(context).addToLog,
        style: const TextStyle(
          color: WorldOnColors.white,
        ),
      ),
    );
  }
}
