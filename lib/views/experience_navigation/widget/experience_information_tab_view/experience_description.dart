import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperienceDescription extends StatelessWidget {
  const ExperienceDescription({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      experience.description.getOrCrash(),
      textAlign: TextAlign.justify,
      style: const TextStyle(
        fontSize: 15,
        color: WorldOnColors.background,
      ),
    );
  }
}
