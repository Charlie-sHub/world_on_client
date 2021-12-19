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
    required this.size,
  }) : super(key: key);

  final Experience experience;
  final double size;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: size,
        width: size,
        child: IconButton(
          onPressed: () => context.read<NavigationActorBloc>().add(
                NavigationActorEvent.experienceNavigationTapped(
                  some(experience),
                ),
              ),
          padding: EdgeInsets.zero,
          icon: Icon(
            Icons.play_circle_fill_rounded,
            color: WorldOnColors.primary,
            size: size,
          ),
        ),
      );
}
