import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class AddToLogButton extends StatelessWidget {
  const AddToLogButton({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<ExperienceCardActorBloc>().add(
            ExperienceCardActorEvent.addedExperienceToLog(experience),
          ),
      padding: const EdgeInsets.all(5),
      constraints: const BoxConstraints(),
      icon: const Icon(
        MdiIcons.bookmarkPlus,
        color: WorldOnColors.white,
        size: 25,
      ),
    );
  }
}
