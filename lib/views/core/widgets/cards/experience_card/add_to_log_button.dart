import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:worldon/application/core/experience_add_to_log_actor/experience_add_to_log_actor_bloc.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class AddToLogButton extends StatelessWidget {
  const AddToLogButton({
    Key? key,
    required this.experienceId,
  }) : super(key: key);

  final UniqueId experienceId;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<ExperienceAddToLogActorBloc>().add(
            ExperienceAddToLogActorEvent.addedExperienceToLog(experienceId),
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
