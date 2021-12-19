import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/functions/world_on_number_display.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/experience_navigation/widgets/like_dislike_button_builder.dart';

class ExperienceHeader extends StatelessWidget {
  const ExperienceHeader({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 5,
            child: AutoSizeText(
              experience.title.getOrCrash(),
              style: const TextStyle(
                color: WorldOnColors.accent,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Row(
            children: [
              LikeDislikeButtonBuilder(
                experienceId: experience.id,
              ),
              const SizedBox(width: 5),
              BlocBuilder<ExperienceLikeActorBloc, ExperienceLikeActorState>(
                buildWhen: (previous, current) =>
                    previous.likesAmount != current.likesAmount,
                builder: (context, state) => Text(
                  createNumberDisplay(state.likesAmount),
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      );
}
