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
  Widget build(BuildContext context) => AutoSizeText(
        experience.description.getOrCrash(),
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey.shade600,
        ),
      );
}
