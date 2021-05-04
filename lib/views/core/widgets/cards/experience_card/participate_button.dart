import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ParticipateButton extends StatelessWidget {
  const ParticipateButton({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: IconButton(
        onPressed: () => context.read<NavigationActorBloc>().add(
              NavigationActorEvent.experienceNavigationTapped(some(experience)),
            ),
        padding: const EdgeInsets.all(0),
        icon: const Icon(
          Icons.play_arrow_rounded,
          color: WorldOnColors.primary,
          size: 60,
        ),
      ),
    );
  }
}
