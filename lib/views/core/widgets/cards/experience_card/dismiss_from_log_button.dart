import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:worldon/application/core/experience_add_to_log_actor/experience_add_to_log_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class DismissFromLogButton extends StatelessWidget {
  const DismissFromLogButton({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<ExperienceAddToLogActorBloc>().add(
            ExperienceAddToLogActorEvent.dismissedExperienceFromLog(experience),
          ),
      padding: const EdgeInsets.all(5),
      constraints: const BoxConstraints(),
      icon: const Icon(
        MdiIcons.bookmarkMinus,
        color: WorldOnColors.white,
        size: 25,
      ),
    );
  }
}
