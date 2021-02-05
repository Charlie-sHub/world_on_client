import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperienceDoneCounter extends StatelessWidget {
  const ExperienceDoneCounter({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // TODO: Implement the user pictures
        // The avatars of the last 3 users to have done the experience should appear here
        // The seems like overkill, is it worth it?
        Text(
          S.of(context).doneBy,
          style: const TextStyle(color: WorldOnColors.background),
        ),
        const SizedBox(width: 5),
        Text(
          experience.doneBy.length.toString(),
          style: const TextStyle(color: WorldOnColors.background),
        ),
      ],
    );
  }
}
