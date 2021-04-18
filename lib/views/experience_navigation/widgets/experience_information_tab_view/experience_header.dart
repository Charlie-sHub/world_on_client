import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperienceHeader extends StatelessWidget {
  const ExperienceHeader({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WorldOnColors.primary,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: AutoSizeText(
          experience.title.getOrCrash(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: WorldOnColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
