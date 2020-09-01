import 'package:flutter/material.dart';
import 'package:worldon/core/assets.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
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
        Container(
          width: 80,
          child: Stack(
            children: const <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(Assets.userPlaceholder),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/placeholder_user_bro.jpg"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/placeholder_user_charlie.jpg"),
                ),
              )
            ],
          ),
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
