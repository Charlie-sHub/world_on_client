import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';

class ExperienceDescription extends StatelessWidget {
  final Experience experience;

  const ExperienceDescription({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      experience.description.getOrCrash(),
      textAlign: TextAlign.justify,
      style: const TextStyle(
        fontSize: 15,
      ),
    );
  }
}
