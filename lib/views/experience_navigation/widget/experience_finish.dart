import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';

class ExperienceFinish extends StatelessWidget {
  final Experience experience;

  const ExperienceFinish({Key key, @required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Experience Finished"),
    );
  }
}
