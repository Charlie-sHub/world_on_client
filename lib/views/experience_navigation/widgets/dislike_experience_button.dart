import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class DislikeExperienceButton extends StatelessWidget {
  const DislikeExperienceButton({
    Key? key,
    required this.experienceId,
  }) : super(key: key);

  final UniqueId experienceId;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.thumb_up,
        color: WorldOnColors.primary,
        size: 30,
      ),
      padding: EdgeInsets.zero,
      onPressed: () => context.read<ExperienceLikeActorBloc>().add(
            ExperienceLikeActorEvent.disliked(experienceId),
          ),
    );
  }
}
