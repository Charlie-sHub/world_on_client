import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/common_functions/world_on_number_display.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/experience_navigation/widgets/like_dislike_button_builder.dart';

class ExperienceHeader extends StatelessWidget {
  const ExperienceHeader({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        const Expanded(
          child: SizedBox(
            width: 1,
          ),
        ),
        LikeDislikeButtonBuilder(
          experience: experience,
        ),
        const SizedBox(width: 5),
        Text(
          createWorldOnDisplay(experience.likedBy.length),
        ),
      ],
    );
  }
}
